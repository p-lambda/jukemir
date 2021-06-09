if __name__ == "__main__":
    import logging
    import pathlib
    import sys

    from .. import CACHE_DIR
    from . import (
        cache_dataset,
        iter_debug,
        iter_emomusic,
        iter_giantsteps_clips,
        iter_gtzan_ff,
        iter_magnatagatune,
    )

    logging.basicConfig(level=logging.INFO)

    dataset = sys.argv[1]
    dataset_dir = pathlib.Path(CACHE_DIR, "processed", dataset)
    logging.info(f"Caching {dataset} to {dataset_dir}")
    cache_dataset(
        eval(f"iter_{dataset}")(metadata_only="audio" not in sys.argv), dataset_dir
    )
