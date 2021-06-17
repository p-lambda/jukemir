if __name__ == "__main__":
    import json
    import logging
    from argparse import ArgumentParser

    from . import ProbeExperiment, ProbeExperimentConfig, execute_probe_experiment

    parser = ArgumentParser()
    parser.add_argument("cfg_json_path", type=str)
    parser.add_argument("--output_root_dir", type=str)
    parser.add_argument("--datasets_root_dir", type=str)
    parser.add_argument("--representations_root_dir", type=str)
    parser.add_argument("--wandb", action="store_true")

    parser.set_defaults(
        wandb=False,
        output_root_dir=None,
        datasets_root_dir=None,
        representations_root_dir=None,
    )

    args = parser.parse_args()

    with open(args.cfg_json_path, "r") as f:
        cfg = ProbeExperimentConfig(json.load(f))
    execute_probe_experiment(
        cfg,
        wandb=args.wandb,
        output_root_dir=args.output_root_dir,
        datasets_root_dir=args.datasets_root_dir,
        representations_root_dir=args.representations_root_dir,
    )
