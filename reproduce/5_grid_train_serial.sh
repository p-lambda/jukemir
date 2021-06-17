for DATASET in gtzan_ff giantsteps_clips magnatagatune emomusic
do
	for REPRESENTATION in chroma mfcc choi musicnn clmr jukebox
	do
		docker exec -it jukemir python reproduce/5_grid_train.py $DATASET $REPRESENTATION
	done
done
