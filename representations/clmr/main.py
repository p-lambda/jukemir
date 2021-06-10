ENCODER_CHECKPOINT_PATH = "clmr_magnatagatune_mlp/clmr_epoch=10000.ckpt"
SAMPLE_RATE = 22050
FRAME_LENGTH = 59409

if __name__ == "__main__":
    import pathlib
    from argparse import ArgumentParser

    import librosa
    import numpy as np
    import torch
    from clmr.models import SampleCNN
    from clmr.utils import load_encoder_checkpoint, yaml_config_hook
    from simclr.modules.identity import Identity
    from tqdm import tqdm

    parser = ArgumentParser()
    parser.add_argument("--batch_size", type=int)
    parser.add_argument("--batch_idx", type=int)

    parser.set_defaults(
        batch_size=None,
        batch_idx=None,
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

    encoder = None
    for input_path in tqdm(input_paths):
        # Check if output already exists
        output_path = pathlib.Path(output_dir, f"{input_path.stem}.npy")
        try:
            np.load(output_path)
            continue
        except:
            pass

        if encoder is None:
            config = yaml_config_hook("clmr/config/config.yaml")
            encoder = SampleCNN(
                strides=[3, 3, 3, 3, 3, 3, 3, 3, 3],
                supervised=config["supervised"],
                out_dim=50,
            )

            # get dimensions of last fully-connected layer
            n_features = encoder.fc.in_features

            # load the enoder weights from a CLMR checkpoint
            # set the last fc layer to the Identity function, since we attach the
            # fine-tune head seperately

            state_dict = load_encoder_checkpoint(ENCODER_CHECKPOINT_PATH)
            encoder.load_state_dict(state_dict)
            encoder.fc = Identity()

            device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
            encoder.eval()
            encoder.to(device)

        with torch.no_grad():
            audio, sr = librosa.core.load(input_path, sr=SAMPLE_RATE)
            if audio.ndim == 1:
                audio = audio[np.newaxis]
            audio = torch.tensor(audio, dtype=torch.float32)
            audio = torch.mean(audio, axis=0, keepdim=True)
            frames = torch.split(audio, FRAME_LENGTH, dim=1)
            if len(frames) <= 1:
                raise Exception("Audio too short")
            frames = torch.cat(frames[:-1], dim=0)
            frames = frames.unsqueeze(dim=1)
            representations = encoder(frames)
            representation = representations.mean(dim=0).cpu().numpy()

        np.save(output_path, representation)
