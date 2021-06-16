if __name__ == "__main__":
    import json
    import pathlib
    from argparse import ArgumentParser

    from .. import CACHE_PROBES_DIR
    from . import ProbeExperiment

    parser = ArgumentParser()
    parser.add_argument("dataset", type=str)
    parser.add_argument("representation", type=str)
    parser.add_argument("--output_metrics_path", type=str)
    parser.add_argument("--metric", type=str)
    parser.add_argument("--evaluate", type=str)
    parser.add_argument("--probes_root_dir", type=str)
    parser.add_argument("--datasets_root_dir", type=str)
    parser.add_argument("--representations_root_dir", type=str)

    parser.set_defaults(
        output_metrics_path=None,
        metric="primary",
        evaluate="valid",
        probes_root_dir=None,
        datasets_root_dir=None,
        representations_root_dir=None,
    )

    args = parser.parse_args()

    # Find best run
    probes_root_dir = pathlib.Path(
        CACHE_PROBES_DIR if args.probes_root_dir is None else args.probes_root_dir,
        args.dataset,
        args.representation,
    )
    best_uid = None
    best_metrics = None
    for metrics_path in probes_root_dir.rglob("metrics.json"):
        uid = metrics_path.parent.stem
        with open(metrics_path, "r") as f:
            metrics = json.load(f)
        if best_metrics is None or metrics[args.metric] > best_metrics[args.metric]:
            best_uid = uid
            best_metrics = metrics
    print("best uid")
    print(best_uid)
    print("valid")
    print(best_metrics)

    # Compute performance
    exp = ProbeExperiment.load(best_uid, root_dir=probes_root_dir)
    exp.load_data()
    metrics = exp.eval(args.evaluate)
    metrics = {k: v for k, v in sorted(metrics.items(), key=lambda x: x[0])}
    print(args.evaluate)
    print(metrics)
    if args.output_metrics_path is not None:
        with open(args.output_metrics_path, "w") as f:
            f.write(json.dumps(metrics, indent=2, sort_keys=True))
