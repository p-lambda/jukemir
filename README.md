# Jukebox for MIR transfer learning

This repository contains code for our paper [_Codified audio language modeling learns useful representations for music information retrieval_]() (Castellon et al. 2021), which demonstrates that [OpenAI's Jukebox](https://openai.com/blog/jukebox/) provides rich representations for MIR transfer learning.

This README is divided into two standalone sections. The [first section](#simple-example) is optimized for simplicity and provides an end-to-end example of genre detection using representations from Jukebox. The [second section](#reproducing-results) is optimized for reproducibility and provides step-by-step instructions for reproducing the results from our paper.

## Simple example of using Jukebox for transfer learning

## Reproducing results from our paper

This section provides step-by-step instructions for reproducing all results from our paper. All code is executed within [pre-built Docker containers](https://hub.docker.com/orgs/jukemir/repositories) to increase reproducibility.

If you only need precomputed representations for all datasets, you can skip most of these steps and simply [download them from here](TODO).

### Setting up Docker and cache

### Downloading the datasets

Once Docker is running, you can download all of the datasets by running the following shell script:

```sh
for ASSET_PREFIX in magnatagatune gtzan emomusic giantsteps
do
	docker exec -it jukemir python -m jukemir.assets $ASSET_PREFIX --delete_wrong --num_parallel 8
done
```

This will retrieve all of the raw dataset assets from their respective sources and verify resultant file integrities. Note that this downloads about 8GB of files and may take quite a long time depending on the speed of your network connection.

The resultant files will be downloaded to the `datasets` subdirectory of your cache directory (`~/jukemir/cache` by default).

### Processing the datasets

The previous step downloads all of the datasets in their encoded (e.g., MP3) formats. To process them into standard (16-bit PCM) WAV files, please run the following script:

```sh
for DATASET_TAG in magnatagatune gtzan_ff emomusic giantsteps_clips
do
	docker exec -it jukemir python -m jukemir.datasets.cache $DATASET_TAG audio
done
```

This script will also take several hours to run and will produce about 50GB of WAV files.

The resultant files will be downloaded to the `processed` subdirectory of your cache directory (`~/jukemir/cache` by default).

### Extracting representations

Next, we need to extract representations for each WAV file in the processed datasets. Note that this process is resource-intensive (especially for certain representations). Unless you need to extract representations for a new dataset, you can skip this step and [download pre-computed representations for all datasets](TODO).

Each representation from our paper (`chroma`, `mfcc`, `choi`, `musicnn`, `clmr`, `jukebox`) has been packaged into a pre-built Docker container with a common API. The basic "type signature" of each container takes a folder of WAV files as input and returns a folder of Numpy arrays containing the corresponding representations. For example, if you have a folder in your current working directory called `mywavs/`, you can extract representations from Jukebox via the following command, which will create a folder of Numpy arrays called `mywavs_jukebox/`:

```sh
docker run -it --rm -v $(pwd)/mywavs:/input -v $(pwd)/mywavs_jukebox:/output jukemir/representations_jukebox
```

Note that each container also takes two optional arguments as input, `--batch_size` and `--batch_idx`, which can be used to compute representations for a subset (batch) of the input WAV file directory. This is useful for parallelizing computation across several workers. Note that, because `choi` uses batchnorm during inference, its representations will differ if `--batch_size` is changed from its default value of `256` (not recommended). All other representations are invariant to batch size.

The following Python script will generate all of the Docker commands needed to re-extract all representations for all datasets (see [`scripts/extract.sh`](scripts/extract.sh) for output). We highly recommend executing these commands in parallel in your own computing environment, as running them one at a time will take a long time.

```py
import math

from jukemir import CACHE_DIR

REPRESENTATIONS = ["chroma", "mfcc", "choi", "musicnn", "clmr", "jukebox"]
DATASET_SIZES = [
    ("emomusic", 744),
    ("gtzan_ff", 930),
    ("magnatagatune", 25860),
    ("giantsteps_clips", 7035),
]
BATCH_SIZE = 256
CMD_TEMPLATE = """
docker run \\
	-it \\
	--rm \\
	-v {cache_dir}/processed/{dataset_tag}/wav:/input \\
	-v {cache_dir}/representations/{dataset_tag}/{representation_tag}:/output \\
	jukemir/representations_{representation_tag} \\
	--batch_size {batch_size} \\
	--batch_idx {batch_idx}
""".strip()

for dataset_tag, dataset_size in DATASET_SIZES:
    for representation_tag in REPRESENTATIONS:
        for batch_idx in range(math.ceil(dataset_size / BATCH_SIZE)):
            print(
                CMD_TEMPLATE.format(
                    cache_dir=CACHE_DIR,
                    dataset_tag=dataset_tag,
                    representation_tag=representation_tag,
                    batch_size=BATCH_SIZE,
                    batch_idx=batch_idx,
                )
            )
```

## Citation

If you use this codebase in your work, please consider citing our paper:

```
@article{castellon2021calm,
  title={Codified audio language modeling learns useful representations for music information retrieval},
  author={Rodrigo Castellon and Chris Donahue and Percy Liang},
  journal={arXiv:2107.},
  year={2021},
}
```
