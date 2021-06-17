for DATASET in gtzan_ff giantsteps_clips magnatagatune emomusic
do
	for REPRESENTATION in chroma mfcc choi musicnn clmr jukebox
	do
		docker exec -it jukemir \
			python -m jukemir.probe.aggregate \
				$DATASET \
				$REPRESENTATION \
				--evaluate test \
				--expected_num_runs 216
	done
done
