import hashlib
import pathlib
import subprocess
import tempfile
import unittest

import numpy as np

from .utils import compute_checksum, decode_base64, encode_base64, run_cmd_sync


class TestUtils(unittest.TestCase):
    def test_run_cmd_sync(self):
        status, stdout, stderr = run_cmd_sync(
            "ls", cwd=pathlib.Path(__file__).resolve().parent
        )
        self.assertEqual(status, 0)
        self.assertTrue(pathlib.Path(__file__).parts[-1] in stdout)
        self.assertEqual(stderr, "")
        with self.assertRaises(ValueError):
            run_cmd_sync("")
        with self.assertRaises(NotADirectoryError):
            run_cmd_sync("ls", cwd=pathlib.Path(__file__).resolve())
        with self.assertRaises(subprocess.TimeoutExpired):
            run_cmd_sync("sleep 1", timeout=1e-2)
        # TODO: Test interactive somehow? contextlib.redirect_stdout didn't work

    def test_compute_checksum(self):
        with tempfile.NamedTemporaryFile() as f:
            path = pathlib.Path(f.name)
            with open(path, "w") as f:
                f.write("foo")
            self.assertEqual(
                compute_checksum(path),
                "2c26b46b68ffc68ff99b453c1d30413413422d706483bfa0f98a5e886266e7ae",
            )
            self.assertEqual(
                compute_checksum("foo".encode("utf-8")),
                "2c26b46b68ffc68ff99b453c1d30413413422d706483bfa0f98a5e886266e7ae",
            )
            self.assertEqual(
                compute_checksum(path, algorithm="md5"),
                "acbd18db4cc2f85cedef654fccc4a4d8",
            )
            for algorithm in hashlib.algorithms_guaranteed:
                if algorithm.startswith("shake"):
                    continue
                checksum = compute_checksum(path, algorithm=algorithm)
                self.assertTrue(isinstance(checksum, str))
                self.assertTrue(checksum.strip(), checksum)
                self.assertGreater(len(checksum), 0)

        with tempfile.TemporaryDirectory() as d:
            d = pathlib.Path(d)
            with self.assertRaises(FileNotFoundError):
                compute_checksum(pathlib.Path(d, "nonexistent"))
            with self.assertRaises(IsADirectoryError):
                compute_checksum(d)

        with self.assertRaises(ValueError):
            compute_checksum(None, algorithm="shake_128")
        with self.assertRaises(ValueError):
            compute_checksum(None, algorithm="foo256")

    def test_base64(self):
        payload = "foo".encode("utf-8")
        payload_b64 = encode_base64(payload)
        self.assertEqual(payload_b64, "Zm9v")
        payload_hat = decode_base64(payload_b64)
        self.assertEqual(payload, payload_hat)

        payload = np.random.rand(1024).astype(np.float32)
        payload_b64 = encode_base64(payload)
        self.assertEqual(len(payload_b64), 5464)
        payload_hat = np.frombuffer(decode_base64(payload_b64), dtype=np.float32)
        self.assertTrue(np.array_equal(payload, payload_hat))
