## Reproducing results from our paper

### Setting up Docker and cache

### Downloading the datasets

Once Docker is running, you can download all of the datasets by running the following shell script:

```sh
for ASSET_TAG in magnatagatune gtzan emomusic giantsteps
do
	docker exec -it jukemir python -m jukemir.assets $ASSET_TAG --delete_wrong --num_parallel 8
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

Each representation from our paper (`chroma`, `mfcc`, `choi`, `musicnn`, `clmr`, `jukebox`) has been packaged into a pre-built Docker container with a common API. The basic "type signature" of each container takes a folder of WAV files as input and returns a folder of Numpy arrays containing the corresponding representations. For example, if you have a folder in your current working directory called `mywavs/`, you can extract representations from Jukebox via the following command, which will create a folder of Numpy arrays called `mywavs_jukebox`:

```sh
docker run -it --rm -v $(pwd)/mywavs:/input -v $(pwd)/mywavs_jukebox:/output jukemir/representations_jukebox
```

Note that each container also takes two optional arguments as input, `--batch_size` and `--batch_idx`, which can be used to compute representations for a subset (batch) of the input WAV file directory. This is useful for parallelizing computation across several workers. Note that, because `choi` uses batchnorm during inference, its representations will differ if `--batch_size` is changed from its default value of `256` (not recommended). All other representations are invariant to batch size.

The following script will re-extract all representations for all datasets from our paper. However, it is provided mainly for reference, as running all of the extraction on a single machine will take several days. Hence, this script should be thought of as a starting point for parallelizing the work across many machines in your own environment:

```sh
CACHE_DIR=$(python3 -c "from jukemir import CACHE_DIR; print(CACHE_DIR)")
#DATASET_SIZES = ( 25860 930 744 8796 )
DATASET_TAGS=( magnatagatune gtzan_ff emomusic giantsteps_clips )
DATASET_NUM_BATCHES=( 102 4 3 35 )
for i in "${!DATASET_TAGS[@]}"
do
	DATASET_TAG=${DATASET_TAGS[$i]}
	DATASET_NUM_BATCH=${DATASET_NUM_BATCHES[$i]}
	for REPRESENTATION_TAG in chroma mfcc choi musicnn # clmr jukebox
	do
		for ((batch_idx=0;batch_idx<DATASET_NUM_BATCH;batch_idx++))
		do
			echo "Extracting" $DATASET_TAG $REPRESENTATION_TAG $batch_idx
			DATASET_DIR=$CACHE_DIR/datasets/debug
			docker run \
				-it \
				--rm \
				-v $CACHE_DIR/processed/$DATASET_TAG/wav:/input \
				-v $CACHE_DIR/representations/$DATASET_TAG/$REPRESENTATION_TAG:/output \
				jukemir/representations_${REPRESENTATION_TAG} \
				--batch_size 256 \
				--batch_idx $batch_idx
		done
	done
done
```
