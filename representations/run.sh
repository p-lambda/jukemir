source env.sh

./build.sh $@

docker run \
  -it \
  --rm \
  $DOCKER_CPU_ARG \
  $DOCKER_GPU_ARG \
  -v $INPUT_DIR:/input \
  -v $OUTPUT_DIR:/output \
  $DOCKER_NAMESPACE/$DOCKER_TAG \
  $REPRESENTATION_ARGS
