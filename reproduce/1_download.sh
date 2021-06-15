for ASSET_PREFIX in gtzan giantsteps magnatagatune emomusic
do
	docker exec -it jukemir python -m jukemir.assets $ASSET_PREFIX --delete_wrong --num_parallel 8
done
