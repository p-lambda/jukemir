cl new my-jukemir
cl work my-jukemir
cl add bundle jukemir//code
cl add bundle jukemir//configs
cl add bundle jukemir//metadata

for DATASET in gtzan_ff giantsteps_clips magnatagatune emomusic
do
	for REPRESENTATION in chroma mfcc choi musicnn clmr jukebox
	do
		cl add bundle jukemir//$DATASET-$REPRESENTATION
		cl run :code :metadata :configs :$DATASET-$REPRESENTATION " mkdir -p /jukemir/cache/processed; mkdir -p /jukemir/cache/representations/$DATASET/$REPRESENTATION; mkdir -p /jukemir/cache/probes; cp -r code/* /jukemir/jukemir/; cp -r metadata/* /jukemir/cache/processed/; cp -r $DATASET-$REPRESENTATION/* /jukemir/cache/representations/$DATASET/$REPRESENTATION/; cp -r configs/* /jukemir/cache/probes/; for CFG_PATH in /jukemir/cache/probes/$DATASET/$REPRESENTATION/*; do echo \$CFG_PATH; python -m jukemir.probe.execute \$CFG_PATH ./; done " -n jukemir_grid-$DATASET-$REPRESENTATION --tags jukemir_grid $DATASET $REPRESENTATION $DATASET-$REPRESENTATION --request-memory 30g --request-docker-image jukemir/lib --request-gpus 1
	done
done
