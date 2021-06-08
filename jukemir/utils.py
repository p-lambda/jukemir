"""Common utilities"""

import base64
import gzip
import hashlib
import shlex
import subprocess

import numpy as np


def run_cmd_sync(cmd, cwd=None, interactive=False, timeout=None):
    """Runs a console command synchronously and returns the results.

    Parameters
    ----------
    cmd : str
       The command to execute.
    cwd : :class:`pathlib.Path`, optional
       The working directory in which to execute the command.
    interactive : bool, optional
       If set, run command interactively and pipe all output to console.
    timeout : float, optional
       If specified, kills process and throws error after this many seconds.

    Returns
    -------
    int
       Process exit status code.
    str, optional
       Standard output (if not in interactive mode).
    str, optional
       Standard error (if not in interactive mode).

    Raises
    ------
    :class:`ValueError`
       Empty command.
    :class:`NotADirectoryError`
       Specified working directory is not a directory.
    :class:`subprocess.TimeoutExpired`
       Specified timeout expired.
    """
    if cmd is None or len(cmd.strip()) == 0:
        raise ValueError()

    kwargs = {}
    if not interactive:
        kwargs["stdout"] = subprocess.PIPE
        kwargs["stderr"] = subprocess.PIPE

    p = subprocess.Popen(shlex.split(cmd), cwd=cwd, **kwargs)
    try:
        p_res = p.communicate(timeout=timeout)
    except subprocess.TimeoutExpired as e:
        p.kill()
        p.wait()
        raise e

    result = p.returncode

    if not interactive:
        stdout, stderr = [s.decode("utf-8").strip() for s in p_res]
        result = (result, stdout, stderr)

    return result


def compute_checksum(path_or_bytes, algorithm="sha256", gunzip=False, chunk_size=4096):
    """Computes checksum of target path.

    Parameters
    ----------
    path_or_bytes : :class:`pathlib.Path` or bytes
       Location or bytes of file to compute checksum for.
    algorithm : str, optional
       Hash algorithm (from :func:`hashlib.algorithms_available`); default ``sha256``.
    gunzip : bool, optional
       If true, decompress before computing checksum.
    chunk_size : int, optional
       Chunk size for iterating through file.

    Raises
    ------
    :class:`FileNotFoundError`
       Unknown path.
    :class:`IsADirectoryError`
       Path is a directory.
    :class:`ValueError`
       Unknown algorithm.

    Returns
    -------
    str
       Hex representation of checksum.
    """
    if algorithm not in hashlib.algorithms_guaranteed or algorithm.startswith("shake"):
        raise ValueError("Unknown algorithm")
    computed = hashlib.new(algorithm)
    if isinstance(path_or_bytes, bytes):
        computed.update(path_or_bytes)
    else:
        open_fn = gzip.open if gunzip else open
        with open_fn(path_or_bytes, "rb") as f:
            while True:
                data = f.read(chunk_size)
                if not data:
                    break
                computed.update(data)
    return computed.hexdigest()


def encode_base64(b):
    """Encode bytes as JSON-friendly base64 string."""
    return base64.b64encode(b).decode("ascii")


def decode_base64(b):
    """Encode base64 string as bytes."""
    return base64.b64decode(b)


def float32_to_pcm16(wav):
    """Quantize floating-point waveform to 16-bit signed PCM."""
    if wav.dtype != np.float32:
        raise ValueError()
    wav = np.copy(wav)
    wav *= np.iinfo(np.int16).max
    wav = np.clip(wav, np.iinfo(np.int16).min, np.iinfo(np.int16).max)
    return wav.astype(np.int16)


def pcm16_to_float32(wav):
    """Convert 16-bit signed PCM to floating-point waveform."""
    if wav.dtype != np.int16:
        raise ValueError()
    return wav.astype(np.float32) / np.iinfo(np.int16).max
