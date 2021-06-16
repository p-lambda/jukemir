pushd ..
set -e
HOST_CACHE=$(python -c "from jukemir import CACHE_DIR; print(CACHE_DIR)")
echo $HOST_CACHE
popd

docker run \
  -it \
  --rm \
  -d \
  --name jukemir \
  -u $(id -u):$(id -g) \
  -v $HOST_CACHE:/jukemir/cache \
  -v $(pwd)/../jukemir:/jukemir/jukemir \
  -v $(pwd)/../reproduce:/jukemir/reproduce \
  jukemir/lib \
  bash
