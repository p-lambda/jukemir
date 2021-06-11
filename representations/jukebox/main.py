if __name__ == "__main__":
    import pathlib
    from argparse import ArgumentParser

    # imports and set up Jukebox's multi-GPU parallelization
    import jukebox
    import numpy as np
    import torch
    from jukebox.hparams import Hyperparams, setup_hparams
    from jukebox.make_models import MODELS, make_model, make_prior, make_vqvae
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

    model = None
    for input_path in tqdm(input_paths):
        # Check if output already exists
        output_path = pathlib.Path(output_dir, f"{input_path.stem}.npy")
        try:
            np.load(output_path)
            continue
        except:
            pass

        if model is None:
            rank, local_rank, device = setup_dist_from_mpi()

            # set up vq-vae
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

            hparams = setup_hparams(priors[-1], dict())
            hparams["prior_depth"] = 36

            top_prior = make_prior(hparams, vqvae, device)

        taggram, tags, features = extractor(
            input_path, model="MSD_musicnn_big", extract_features=True
        )
        representation = np.concatenate(
            [features[k].mean(axis=0) for k in args.representations.split(",")]
        )

        np.save(output_path, representation)
