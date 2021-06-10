"""
Modified from: https://github.com/keunwoochoi/transfer_learning_music/blob/master/utils_featext.py
"""

import time
from argparse import Namespace
from multiprocessing import Pool

import librosa
import pandas as pd
from keras import backend as K
from models_transfer import build_convnet_model

FOLDER_CSV = "data_csv/"
FOLDER_FEATS = "data_feats/"
FOLDER_WEIGHTS = "weights_transfer/"

SR = 12000  # [Hz]
len_src = 29.0  # [second]
N_JOBS = 9
ref_n_src = 12000 * 29


def gen_filepaths(df, dataroot=None):
    if dataroot is None:
        dataroot = PATH_DATASETS
    for filepath in df["filepath"]:
        yield os.path.join(dataroot, filepath)


def gen_audiofiles(df, batch_size=256, dataroot=None):
    """gen single audio file src in a batch_size=1 form for keras model.predict_generator
    df: dataframe
    total_size: integer.
    batch_size: integer.
    dataroot: root path for data"""

    """"""
    pool = Pool(N_JOBS)

    def _multi_loading(pool, paths):
        srcs = pool.map(_load_audio, paths)
        srcs = np.array(srcs)
        try:
            srcs = srcs[:, np.newaxis, :]
        except:
            pdb.set_trace()

        return srcs

    total_size = len(df)
    n_leftover = int(total_size % batch_size)
    leftover = n_leftover != 0
    n_batch = int(total_size / batch_size)
    gen_f = gen_filepaths(df, dataroot=dataroot)
    print(
        "n_batch: {}, n_leftover: {}, all: {}".format(n_batch, n_leftover, total_size)
    )

    for batch_idx in xrange(n_batch):
        paths = []
        for inbatch_idx in range(batch_size):
            paths.append(gen_f.next())
        print("..yielding {}/{} batch..".format(batch_idx, n_batch))
        yield _multi_loading(pool, paths)

    if leftover:
        paths = []
        for inbatch_idx in range(n_leftover):
            paths.append(gen_f.next())
        print("..yielding final batch w {} data sample..".format(len(paths)))
        yield _multi_loading(pool, paths)


def _load_audio(path, zero_pad=False):
    """return (N,) shape mono audio signal
    if zero_pad, pad zeros.
    Else, repeat and trim."""
    src, sr = librosa.load(path, sr=SR, duration=len_src * 12000.0 / float(SR))
    if len(src) >= ref_n_src:
        return src[:ref_n_src]
    else:
        if zero_pad:
            result = np.zeros(ref_n_src)
            result[: len(src)] = src[:ref_n_src]
            return result
        else:
            n_tile = np.ceil(float(ref_n_src) / len(src)).astype("int")
            src = np.tile(src, n_tile)
            return src[:ref_n_src]


def load_model_for_mid(mid_idx):
    assert 0 <= mid_idx <= 4
    args = Namespace(
        test=False,
        data_percent=100,
        model_name="",
        tf_type="melgram",
        normalize="no",
        decibel=True,
        fmin=0.0,
        fmax=6000,
        n_mels=96,
        trainable_fb=False,
        trainable_kernel=False,
        conv_until=mid_idx,
    )
    model = build_convnet_model(args, last_layer=False)
    model.load_weights(
        os.path.join(
            FOLDER_WEIGHTS, "weights_layer{}_{}.hdf5".format(mid_idx, K._backend)
        ),
        by_name=True,
    )
    print("----- model {} weights are loaded. (NO ELM!!!) -----".format(mid_idx))

    return model


def predict(filename, batch_size, model, dataroot=None, npy_suffix=""):
    if dataroot is None:
        dataroot = PATH_DATASETS
    start = time.time()
    csv_filename = "{}.csv".format(filename)
    npy_filename = "{}{}.npy".format(filename, npy_suffix)
    df = pd.DataFrame.from_csv(os.path.join(FOLDER_CSV, csv_filename))
    print("{}: Dataframe with size:{}").format(filename, len(df))
    example_path = os.path.join(dataroot, df["filepath"][0])
    print("An example path - does it exists? {}".format(os.path.exists(example_path)))
    print(df.columns)
    gen_audio = gen_audiofiles(df, batch_size, dataroot)
    feats = model.predict_generator(
        generator=gen_audio, val_samples=len(df), max_q_size=1
    )
    np.save(os.path.join(FOLDER_FEATS, npy_filename), feats)
    print("DONE! You! uuuuu uu! in {:6.4f} sec".format(time.time() - start))


if __name__ == "__main__":
    import glob
    import os
    import random
    from argparse import ArgumentParser

    import numpy as np

    parser = ArgumentParser()
    parser.add_argument("--batch_size", type=int)
    parser.add_argument("--batch_idx", type=int)
    parser.add_argument("--representations", type=str)

    parser.set_defaults(
        batch_size=256,
        batch_idx=None,
        representations="mean_pool,max_pool",
    )
    args = parser.parse_args()

    output_dir = "/output"
    if not os.path.isdir(output_dir):
        os.makedirs(output_dir)
    input_paths = sorted(list(glob.glob("/input/*")))
    # NOTE: Choi is order-dependent due to batchnorm so this shuffle sidesteps file ordering bias issues (e.g., if file paths are ordered by label)
    random.seed(0)
    random.shuffle(input_paths)
    batch_starts = list(range(0, len(input_paths), args.batch_size))
    if args.batch_idx is not None:
        if args.batch_idx >= len(batch_starts):
            raise ValueError("Invalid batch index")
        batch_starts = [batch_starts[args.batch_idx]]
    batches = [input_paths[s : s + args.batch_size] for s in batch_starts]

    models = None
    for input_batch in batches:
        # Check if batch done
        batch_done = True
        output_paths = []
        for input_path in input_batch:
            output_path = os.path.join(
                output_dir,
                "{}.npy".format(os.path.splitext(os.path.split(input_path)[1])[0]),
            )
            output_paths.append(output_path)
            try:
                np.load(output_path)
            except:
                batch_done = False
        if batch_done:
            continue

        # Create dummy CSV
        column_names = ["id", "filepath", "label"]
        rows = [[i, in_fp, 0] for i, in_fp in enumerate(input_batch)]
        df = pd.DataFrame(rows, columns=column_names)
        df.to_csv("data_csv/dummy.csv")

        # Predict
        if models is None:
            models = [load_model_for_mid(i) for i in range(5)]
        representations = []
        for i in range(5):
            predict("dummy", args.batch_size, models[i], ".", "_layer_{}".format(i))
            representations.append(np.load("data_feats/dummy_layer_{}.npy".format(i)))

        # Save batch
        for i in range(len(output_paths)):
            representation = np.concatenate([r[i] for r in representations])
            np.save(output_paths[i], representation)
