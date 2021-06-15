for DATASET_TAG in gtzan_ff giantsteps_clips magnatagatune emomusic
do
	docker exec -it jukemir python -m jukemir.datasets.cache $DATASET_TAG audio
done
