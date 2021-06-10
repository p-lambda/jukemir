FRAME_RATE = 22050 / 512

if __name__ == "__main__":
    import pathlib
    from argparse import ArgumentParser

    import librosa
    import numpy as np
    from tqdm import tqdm

    parser = ArgumentParser()
    parser.add_argument("feature", type=str, choices=["chroma", "mfcc"])
    parser.add_argument("--batch_size", type=int)
    parser.add_argument("--batch_idx", type=int)
    parser.set_defaults(batch_size=None, batch_idx=None)
    args = parser.parse_args()
    print(args)

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

    for input_path in tqdm(input_paths):
        # Check if output already exists
        output_path = pathlib.Path(output_dir, f"{input_path.stem}.npy")
        try:
            np.load(output_path)
            continue
        except:
            pass

        # Load audio
        audio, sr = librosa.core.load(input_path, sr=None, mono=True)

        # Normalize
        norm_factor = np.abs(audio).max()
        if norm_factor > 0:
            audio /= norm_factor

        # Extract features
        if args.feature == "chroma":
            features = librosa.feature.chroma_cqt(
                audio, sr=sr, hop_length=round(sr / FRAME_RATE)
            )
            assert features.shape[0] == 12
        elif args.feature == "mfcc":
            features = librosa.feature.mfcc(
                audio, sr=sr, hop_length=round(sr / FRAME_RATE)
            )
            assert features.shape[0] == 20
        else:
            assert False
        assert features.ndim == 2
        assert features.dtype == np.float32

        # Stack differences/statistics
        moments = []
        for i in range(3):
            f = np.diff(features, n=i, axis=1)
            moments.append(f.mean(axis=1))
            moments.append(f.std(axis=1))
        moments = np.concatenate(moments)

        # Save
        np.save(output_path, moments)
