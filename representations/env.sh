REPRESENTATION_TAG=$1

DATASET_TAG=$2
INPUT_DIR=~/.jukemir/processed/$DATASET_TAG/wav
OUTPUT_DIR=~/.jukemir/representations/$DATASET_TAG/$REPRESENTATION_TAG

REPRESENTATION_ARGS=${@:3}

DOCKER_NAMESPACE=jukemir
DOCKER_TAG=representations_$REPRESENTATION_TAG
DOCKER_CPUS=$(python3 -c "import os; cpus=os.sched_getaffinity(0); print(','.join(map(str,cpus)))")
DOCKER_GPUS=$(nvidia-smi -L | python3 -c "import sys; print(','.join([l.strip().split()[-1][:-1] for l in list(sys.stdin)]))")
DOCKER_CPU_ARG="--cpuset-cpus ${DOCKER_CPUS}"
DOCKER_GPU_ARG="--gpus device=${DOCKER_GPUS}"
