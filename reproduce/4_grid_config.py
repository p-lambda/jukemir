import json
import pathlib

from jukemir import CACHE_PROBES_DIR
from jukemir.probe import paper_grid_cfgs

DATASETS = ["gtzan_ff", "giantsteps_clips", "magnatagatune", "emomusic"]
REPRESENTATIONS = ["chroma", "mfcc", "choi", "musicnn", "clmr", "jukebox"]

for dataset in DATASETS:
    for representation in REPRESENTATIONS:
        grid_dir = pathlib.Path(CACHE_PROBES_DIR, dataset, representation)
        grid_dir.mkdir(parents=True, exist_ok=True)
        for cfg in paper_grid_cfgs(dataset, representation):
            with open(pathlib.Path(grid_dir, f"{cfg.uid()}.json"), "w") as f:
                f.write(json.dumps(cfg, indent=2, sort_keys=True))
