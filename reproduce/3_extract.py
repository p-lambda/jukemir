import math

from jukemir import CACHE_DIR

REPRESENTATIONS = ["chroma", "mfcc", "choi", "musicnn", "clmr", "jukebox"]
DATASET_SIZES = [
    ("gtzan_ff", 930),
    ("giantsteps_clips", 7035),
    ("magnatagatune", 25860),
    ("emomusic", 744),
]
BATCH_SIZE = 256
CMD_TEMPLATE = """
docker run \\
	-it \\
	--rm \\
	-v {cache_dir}/processed/{dataset}/wav:/input \\
	-v {cache_dir}/representations/{dataset}/{representation}:/output \\
	jukemir/representations_{representation} \\
	--batch_size {batch_size} \\
	--batch_idx {batch_idx}
""".strip()

for dataset, dataset_size in DATASET_SIZES:
    for representation in REPRESENTATIONS:
        for batch_idx in range(math.ceil(dataset_size / BATCH_SIZE)):
            print(
                CMD_TEMPLATE.format(
                    cache_dir=CACHE_DIR,
                    dataset=dataset,
                    representation=representation,
                    batch_size=BATCH_SIZE,
                    batch_idx=batch_idx,
                )
            )
