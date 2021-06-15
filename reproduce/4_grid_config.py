import itertools
import json
import pathlib
from collections import OrderedDict

from jukemir import CACHE_DIR
from jukemir.probe import ProbeExperimentConfig

DATASETS = ["gtzan_ff", "giantsteps_clips", "magnatagatune", "emomusic"]
REPRESENTATIONS = ["chroma", "mfcc", "choi", "musicnn", "clmr", "jukebox"]
GRID = OrderedDict(
    {
        "data_standardization": [False, True],
        "hidden_layer_sizes": [[], [512], [512, 256]],
        "batch_size": [64, 256],
        "learning_rate": [1e-5, 1e-4, 1e-3],
        "dropout_p": [0.25, 0.5, 0.75],
        "l2_weight_decay": [None, 1e-4, 1e-3],
    }
)
OUT_ROOT_DIR = pathlib.Path(CACHE_DIR, "probes")

uids = set()
for dataset_tag in DATASETS:
    for representation_tag in REPRESENTATIONS:
        for combination in itertools.product(*GRID.values()):
            cfg = ProbeExperimentConfig(
                dataset=dataset_tag,
                representation=representation_tag,
                **{k: v for k, v in zip(GRID.keys(), combination)},
            )
            grid_dir = pathlib.Path(OUT_ROOT_DIR, dataset_tag, representation_tag)
            grid_dir.mkdir(parents=True, exist_ok=True)
            with open(pathlib.Path(grid_dir, f"{cfg.uid()}.json"), "w") as f:
                f.write(json.dumps(cfg, indent=2, sort_keys=True))
