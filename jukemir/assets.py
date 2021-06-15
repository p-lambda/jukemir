import json
import logging
import pathlib
import urllib.request

from . import CACHE_DIR, LIB_DIR
from .utils import compute_checksum

_DEFAULT_CHUNK_SIZE = 4096

# Parse asset specification JSON
_ASSET_PATHS = set()
_ASSETS = {}
for json_path in sorted(pathlib.Path(LIB_DIR, "assets").rglob("*.json")):
    with open(json_path, "r") as f:
        d = json.load(f)
    for tag, asset in d.items():
        if tag != tag.upper():
            raise AssertionError("Tags should be uppercase")
        if "checksum" not in asset:
            raise AssertionError("Missing checksum")
        try:
            asset["path_rel"] = pathlib.PurePosixPath(asset["path_rel"].strip())
        except:
            raise AssertionError("Invalid path")
        if asset["path_rel"] in _ASSET_PATHS:
            raise AssertionError("Duplicate path")
        _ASSET_PATHS.add(asset["path_rel"])
        asset["path"] = pathlib.Path(CACHE_DIR, asset["path_rel"]).resolve()
    _ASSETS.update(d)


def _download(url, dest_path, chunk_size=_DEFAULT_CHUNK_SIZE):
    with open(dest_path, "wb") as f:
        if "drive.google.com" in url:
            raise NotImplementedError()
        else:
            r = urllib.request.urlopen(url)
            while True:
                chunk = r.read(chunk_size)
                if not chunk:
                    break
                f.write(chunk)


def retrieve_and_or_verify_asset(
    tag, delete_wrong=False, chunk_size=_DEFAULT_CHUNK_SIZE
):
    """Attempts to acquire and/or verify existance of a tagged asset in the cache.

    Returns
    -------
    str
       Absolute file path for asset, if verified.

    Raises
    ------
    :class:`ValueError`
       Invalid asset tag.
    :class:`Exception`
       Asset could not be verified.
    """
    # Retrieve asset
    if tag not in _ASSETS:
        raise ValueError()
    asset = _ASSETS[tag]
    path = asset["path"]
    checksum = asset["checksum"]
    logging.info(f"Verifying asset: {tag}")
    logging.info(f"Asset location: {path}")

    # Create parent directory
    if not path.parent.is_dir():
        logging.info(f"Creating parent: {path.parent}")
        path.parent.mkdir(parents=True)

    def verify():
        assert path.is_file()
        if checksum is not None:
            if len(checksum) == 32:
                algorithm = "md5"
            elif len(checksum) == 40:
                algorithm = "sha1"
            elif len(checksum) == 64:
                algorithm = "sha256"
            else:
                raise Exception("Unknown checksum algorithm")
            computed = compute_checksum(
                path, algorithm=algorithm, chunk_size=chunk_size
            )
            if computed != checksum:
                raise Exception(f"File {path} has wrong checksum.")

    # Delete incorrect files
    already_verified = False
    if delete_wrong and path.is_file():
        try:
            verify()
            already_verified = True
        except Exception:
            logging.warning(f"Deleting file with bad checksum: {path}")
            path.unlink()

    # Attempt to download
    if not path.is_file():
        url = asset.get("url")
        if url is None:
            raise Exception("File is missing and cannot be downloaded")
        logging.info(f"Downloading from: {url}")
        try:
            _download(url, path)
        except Exception as e:
            if path.is_file():
                path.unlink()
            raise Exception(f"Download failed: {e}")
    assert path.is_file()

    # Ensure file integrity
    if not already_verified:
        verify()
    logging.info(f"Verified!")

    return path


if __name__ == "__main__":
    import multiprocessing
    from argparse import ArgumentParser

    parser = ArgumentParser()

    parser.add_argument("startswith", nargs="?")
    parser.add_argument("--delete_wrong", action="store_true", dest="delete_wrong")
    parser.add_argument("--num_parallel", "-n", type=int)

    parser.set_defaults(startswith=None, num_parallel=1, delete_wrong=False)

    args = parser.parse_args()

    logging.basicConfig(level=logging.INFO)

    tags = list(_ASSETS.keys())
    if args.startswith is not None:
        tags = [t for t in tags if t.startswith(args.startswith.strip().upper())]

    def task(t):
        logging.info("-" * 80)
        try:
            retrieve_and_or_verify_asset(t, delete_wrong=args.delete_wrong)
        except Exception as e:
            logging.error(e)
            raise e

    with multiprocessing.Pool(args.num_parallel) as p:
        p.map(task, tags)
