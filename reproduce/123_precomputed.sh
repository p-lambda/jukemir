docker exec -it jukemir python -m jukemir.assets precomputed --delete_wrong --num_parallel 1

pushd ..
set -e
HOST_CACHE=$(python -c "from jukemir import CACHE_DIR; print(CACHE_DIR)")
echo $HOST_CACHE
popd

mkdir -p $HOST_CACHE/representations
pushd $HOST_CACHE/representations
for f in *.tar.gz; do tar xfz "$f"; done
popd
