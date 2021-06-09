source env.sh

docker build -t $DOCKER_NAMESPACE/$DOCKER_TAG -f $REPRESENTATION_TAG.dockerfile .
