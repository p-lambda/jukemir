import os
import pathlib
import tempfile
import unittest
from collections import Counter, defaultdict

import numpy as np
from scipy.io.wavfile import write as wavwrite

from . import (
    cache_dataset,
    iter_emomusic,
    iter_giantsteps,
    iter_giantsteps_clips,
    iter_gtzan,
    iter_gtzan_ff,
    iter_magnatagatune,
    read_dataset_json,
    write_dataset_json,
)


class Test(unittest.TestCase):
    def test_io(self):
        d = {"foo": "bar" * 1000}

        with tempfile.NamedTemporaryFile() as f:
            write_dataset_json(d, f.name)
            self.assertEqual(os.path.getsize(f.name), 3015)
            d_hat = read_dataset_json(f.name)
            self.assertEqual(d, d_hat)

        with tempfile.NamedTemporaryFile(suffix=".gz") as f:
            write_dataset_json(d, f.name)
            self.assertEqual(os.path.getsize(f.name), 76)
            d_hat = read_dataset_json(f.name)
            self.assertEqual(d, d_hat)

    def test_iter_gtzan(self):
        d = {uid: metadata for uid, metadata in iter_gtzan(metadata_only=True)}
        self.assertEqual(len(d), 1000)
        label_counts = Counter()
        for uid, attrs in d.items():
            label_counts[attrs["y"]] += 1
        self.assertEqual(len(label_counts), 10)
        self.assertTrue(all(v == 100 for v in label_counts.values()))

    def test_iter_gtzan_ff(self):
        d = {uid: metadata for uid, metadata in iter_gtzan_ff(metadata_only=True)}
        self.assertEqual(len(d), 930)
        label_counts = Counter()
        split_counts = Counter()
        for uid, attrs in d.items():
            label_counts[attrs["y"]] += 1
            split_counts[attrs["split"]] += 1
        self.assertEqual(len(split_counts), 3)
        self.assertEqual(split_counts["train"], 443)
        self.assertEqual(split_counts["valid"], 197)
        self.assertEqual(split_counts["test"], 290)
        self.assertEqual(len(label_counts), 10)
        self.assertTrue(all(v >= 84 for v in label_counts.values()))

    def test_iter_magnatagatune(self):
        d = {uid: metadata for uid, metadata in iter_magnatagatune(metadata_only=True)}
        self.assertEqual(len(d), 31382)
        tag_counts_top50 = Counter()
        tag_counts = Counter()
        clip_idx_counts = Counter()
        split_counts = Counter()
        for uid, attrs in d.items():
            split_counts[attrs["split"]] += 1
            clip_idx_counts[attrs["clip"]["clip_idx"]] += 1
            if attrs["y"] is not None:
                for tag in attrs["y"]:
                    tag_counts_top50[tag] += 1
                for tag in attrs["y_all"]:
                    tag_counts[tag] += 1
        self.assertEqual(split_counts[None], 5522)
        self.assertEqual(split_counts["train"], 18706)
        self.assertEqual(split_counts["valid"], 1825)
        self.assertEqual(split_counts["test"], 5329)
        self.assertEqual(clip_idx_counts[0], 6670)
        self.assertEqual(clip_idx_counts[74], 1)
        self.assertEqual(len(tag_counts_top50), 50)
        self.assertEqual(len(tag_counts), 188)
        # NOTE: List from https://github.com/keunwoochoi/magnatagatune-list
        keunwoo_list = """guitar, classical, slow, techno, strings, drums, electronic, rock, fast, piano, ambient, beat, violin, vocal, synth, female, indian, opera, male, singing, vocals, no vocals, harpsichord, loud, quiet, flute, woman, male vocal, no vocal, pop, soft, sitar, solo, man, classic, choir, voice, new age, dance, male voice, female vocal, beats, harp, cello, no voice, weird, country, metal, female voice, choral"""
        self.assertEqual(
            frozenset(tag_counts_top50.keys()),
            frozenset(keunwoo_list.strip().split(", ")),
        )
        self.assertTrue(all(v >= 23 for v in tag_counts.values()))
        self.assertTrue(all(v >= 490 for v in tag_counts_top50.values()))

    def test_iter_emomusic(self):
        d = {uid: metadata for uid, metadata in iter_emomusic(metadata_only=True)}
        self.assertEqual(len(d), 744)
        valences = []
        arousals = []
        split_counts = Counter()
        for uid, attrs in d.items():
            split_counts[attrs["split"]] += 1
            valence, arousal = attrs["y"]
            valences.append(valence)
            arousals.append(arousal)
        self.assertEqual(split_counts["train"], 504)
        self.assertEqual(split_counts["valid"], 115)
        self.assertEqual(split_counts["test"], 125)
        self.assertAlmostEqual(np.min(valences), -2.689, places=3)
        self.assertAlmostEqual(np.max(valences), 2.492, places=3)
        self.assertAlmostEqual(np.mean(valences), 0.026, places=3)
        self.assertAlmostEqual(np.std(valences), 0.992, places=3)
        self.assertAlmostEqual(np.min(arousals), -2.277, places=3)
        self.assertAlmostEqual(np.max(arousals), 2.629, places=3)
        self.assertAlmostEqual(np.mean(arousals), 0.022, places=3)
        self.assertAlmostEqual(np.std(arousals), 0.992, places=3)
        """
        # Before normalization
        self.assertAlmostEqual(np.min(valences), 1.6, places=3)
        self.assertAlmostEqual(np.max(valences), 8.1, places=3)
        self.assertAlmostEqual(np.mean(valences), 5.006, places=3)
        self.assertAlmostEqual(np.std(valences), 1.245, places=3)
        self.assertAlmostEqual(np.min(arousals), 1.6, places=3)
        self.assertAlmostEqual(np.max(arousals), 8.4, places=3)
        self.assertAlmostEqual(np.mean(arousals), 4.786, places=3)
        self.assertAlmostEqual(np.std(arousals), 1.375, places=3)
        """

    def test_iter_giantsteps(self):
        d = {uid: metadata for uid, metadata in iter_giantsteps(metadata_only=True)}
        # NOTE: (Korzeniowski and Widmer 2018) says this should be 604+1077=1681
        self.assertEqual(len(d), 1763)
        split_key_counts = defaultdict(Counter)
        key_counts = Counter()
        tonic_counts = Counter()
        scale_counts = Counter()
        for uid, attrs in d.items():
            split_key_counts[attrs["split"]][attrs["y"]] += 1
            key_counts[attrs["y"]] += 1
            tonic, scale = attrs["y"].split()
            tonic_counts[tonic] += 1
            scale_counts[scale] += 1
        self.assertEqual(len(split_key_counts["train"]), 24)
        self.assertEqual(len(split_key_counts["test"]), 24)
        self.assertEqual(sum(split_key_counts["train"].values()), 923)
        self.assertEqual(sum(split_key_counts["valid"].values()), 236)
        self.assertEqual(sum(split_key_counts["test"].values()), 604)
        self.assertEqual(len(key_counts), 24)
        self.assertEqual(key_counts["F minor"], 176)
        self.assertEqual(key_counts["B major"], 27)
        self.assertEqual(len(scale_counts), 2)
        self.assertEqual(scale_counts["minor"], 1293)
        self.assertEqual(scale_counts["major"], 470)
        self.assertEqual(len(tonic_counts), 12)
        self.assertEqual(tonic_counts["F"], 214)
        self.assertEqual(tonic_counts["Db"], 140)

    def test_iter_giantsteps_clips(self):
        d = {
            uid: metadata for uid, metadata in iter_giantsteps_clips(metadata_only=True)
        }
        self.assertEqual(len(d), 7035)
        for metadata in d.values():
            self.assertAlmostEqual(metadata["clip"]["clip_duration"], 30.0, places=3)

    def test_cache_dataset(self):
        def iter_fake_dataset(metadata_only):
            for v in [0, 1]:
                uid = v
                metadata = {"y": v}
                if metadata_only:
                    yield uid, metadata
                else:
                    with tempfile.NamedTemporaryFile() as f:
                        wavwrite(
                            f.name, 44100, np.full((44100, 2), v, dtype=np.float32)
                        )
                        yield uid, metadata, f.name

        for metadata_only in [False, True]:
            with tempfile.TemporaryDirectory() as d:
                cache_dataset(iter_fake_dataset(metadata_only), d, progress_bar=False)
                self.assertEqual(
                    len(read_dataset_json(pathlib.Path(d, "meta.json"))), 2
                )
                if not metadata_only:
                    self.assertTrue(pathlib.Path(d, "wav", "0.wav").is_file())
                    self.assertTrue(pathlib.Path(d, "wav", "1.wav").is_file())
