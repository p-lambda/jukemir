import torch
import librosa as lr
import numpy as np

JUKEBOX_SAMPLE_RATE = 44100
T = 8192


def load_audio_from_file(fpath):
    audio, _ = lr.load(fpath, sr=JUKEBOX_SAMPLE_RATE)
    if audio.ndim == 1:
        audio = audio[np.newaxis]
    audio = audio.mean(axis=0)

    # normalize audio
    norm_factor = np.abs(audio).max()
    if norm_factor > 0:
        audio /= norm_factor

    return audio.flatten()


def get_z(audio, vqvae):
    # don't compute unnecessary discrete encodings
    audio = audio[: JUKEBOX_SAMPLE_RATE * 25]

    zs = vqvae.encode(torch.cuda.FloatTensor(audio[np.newaxis, :, np.newaxis]))

    z = zs[-1].flatten()[np.newaxis, :]

    if z.shape[-1] < 8192:
        raise ValueError('Audio file is not long enough')

    return z


def get_cond(hps, top_prior):
    sample_length_in_seconds = 62

    hps.sample_length = (
        int(sample_length_in_seconds * hps.sr) // top_prior.raw_to_tokens
    ) * top_prior.raw_to_tokens

    # NOTE: the 'lyrics' parameter is required, which is why it is included,
    # but it doesn't actually change anything about the `x_cond`, `y_cond`,
    # nor the `prime` variables
    metas = [
        dict(
            artist="unknown",
            genre="unknown",
            total_length=hps.sample_length,
            offset=0,
            lyrics="""lyrics go here!!!""",
        ),
    ] * hps.n_samples

    labels = [None, None, top_prior.labeller.get_batch_labels(metas, "cuda")]

    x_cond, y_cond, prime = top_prior.get_cond(None, top_prior.get_y(labels[-1], 0))

    x_cond = x_cond[0, :T][np.newaxis, ...]
    y_cond = y_cond[0][np.newaxis, ...]

    return x_cond, y_cond


def get_final_activations(z, x_cond, y_cond, top_prior):

    x = z[:, :T]

    # make sure that we get the activations
    top_prior.prior.only_encode = True

    # encoder_kv and fp16 are set to the defaults, but explicitly so
    out = top_prior.prior.forward(
        x, x_cond=x_cond, y_cond=y_cond, encoder_kv=None, fp16=False
    )

    return out


def get_acts_from_file(fpath, hps, vqvae, top_prior, meanpool=True):
    audio = load_audio_from_file(fpath)

    # run vq-vae on the audio
    z = get_z(audio, vqvae)

    # get conditioning info
    x_cond, y_cond = get_cond(hps, top_prior)

    # get the activations from the LM
    acts = get_final_activations(z, x_cond, y_cond, top_prior)

    # postprocessing
    acts = acts.squeeze().type(torch.float32)

    if meanpool:
        acts = acts.mean(dim=0)

    acts = np.array(acts.cpu())

    return acts


if __name__ == "__main__":
    import pathlib
    from argparse import ArgumentParser

    # imports and set up Jukebox's multi-GPU parallelization
    import jukebox
    from jukebox.hparams import Hyperparams, setup_hparams
    from jukebox.make_models import MODELS, make_prior, make_vqvae
    from jukebox.utils.dist_utils import setup_dist_from_mpi
    from tqdm import tqdm

    parser = ArgumentParser()
    parser.add_argument("--batch_size", type=int)
    parser.add_argument("--batch_idx", type=int)
    parser.add_argument("--representations", type=str)

    parser.set_defaults(
        batch_size=None,
        batch_idx=None,
        representations="mean_pool,max_pool",
    )
    args = parser.parse_args()

    input_dir = pathlib.Path("/input")
    output_dir = pathlib.Path("/output")
    output_dir.mkdir(exist_ok=True)
    input_paths = sorted(list(input_dir.iterdir()))
    if args.batch_size is not None and args.batch_idx is not None:
        batch_starts = list(range(0, len(input_paths), args.batch_size))
        if args.batch_idx >= len(batch_starts):
            raise ValueError("Invalid batch index")
        batch_start = batch_starts[args.batch_idx]
        input_paths = input_paths[batch_start : batch_start + args.batch_size]

    loaded = False
    for input_path in tqdm(input_paths):
        # Check if output already exists
        output_path = pathlib.Path(output_dir, f"{input_path.stem}.npy")
        try:
            np.load(output_path)
            continue
        except:
            pass

        if not loaded:
            # Set up MPI
            rank, local_rank, device = setup_dist_from_mpi()

            # Set up VQVAE
            model = "5b"  # or "1b_lyrics"
            hps = Hyperparams()
            hps.sr = 44100
            hps.n_samples = 3 if model == "5b_lyrics" else 8
            hps.name = "samples"
            chunk_size = 16 if model == "5b_lyrics" else 32
            max_batch_size = 3 if model == "5b_lyrics" else 16
            hps.levels = 3
            hps.hop_fraction = [0.5, 0.5, 0.125]
            vqvae, *priors = MODELS[model]
            vqvae = make_vqvae(
                setup_hparams(vqvae, dict(sample_length=1048576)), device
            )

            # Set up language model
            hparams = setup_hparams(priors[-1], dict())
            hparams["prior_depth"] = 36
            top_prior = make_prior(hparams, vqvae, device)

            loaded = True

        # Decode, resample, convert to mono, and normalize audio
        with torch.no_grad():
            representation = get_acts_from_file(input_path, hps, vqvae, top_prior, meanpool=True)

        np.save(output_path, representation)
