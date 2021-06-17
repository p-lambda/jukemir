import json
import pathlib
import sys

from tqdm import tqdm

from jukemir import CACHE_PROBES_DIR
from jukemir.probe import ProbeExperimentConfig, execute_probe_experiment

dataset, representation = sys.argv[1:]

grid_dir = pathlib.Path(CACHE_PROBES_DIR, dataset, representation)
grid_cfgs = sorted(list(grid_dir.glob("*.json")))
print(f"Training {len(grid_cfgs)} probes for {dataset} {representation}")
for cfg_path in tqdm(list(grid_dir.glob("*.json"))):
    with open(cfg_path, "r") as f:
        cfg = ProbeExperimentConfig(json.load(f))
    execute_probe_experiment(cfg)
