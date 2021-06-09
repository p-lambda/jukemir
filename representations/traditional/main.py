FRAME_RATE = 22050 / 512

if __name__ == "__main__":
    import pathlib
    import sys

    import librosa
    import numpy as np
    from tqdm import tqdm

    feature = sys.argv[1]
    if feature not in ["chroma", "mfcc"]:
        raise ValueError()

    input_dir = pathlib.Path("/input")
    output_dir = pathlib.Path("/output")
    output_dir.mkdir(exist_ok=True)
    for input_path in tqdm(list(input_dir.iterdir())):
        # Load audio
        audio, sr = librosa.core.load(input_path, sr=None, mono=True)

        # Normalize
        norm_factor = np.abs(audio).max()
        if norm_factor > 0:
            audio /= norm_factor

        # Extract features
        if feature == "chroma":
            features = librosa.feature.chroma_cqt(
                audio, sr=sr, hop_length=round(sr / FRAME_RATE)
            )
            assert features.shape[0] == 12
        elif feature == "mfcc":
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
        output_path = pathlib.Path(output_dir, f"{input_path.stem}.npy")
        np.save(output_path, moments)
