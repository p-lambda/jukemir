import json
import pathlib
import random
import tempfile
import unittest

import numpy as np

from . import ProbeExperiment, ProbeExperimentConfig, SimpleMLP


class Test(unittest.TestCase):
    def test_simple_mlp(self):
        mlp = SimpleMLP(100, [50], 10)
        num_parameters = sum(p.numel() for p in mlp.parameters())
        self.assertEqual(num_parameters, 100 * 50 + 50 + 50 * 10 + 10)

    def test_probe_experiment_config(self):
        cfg = ProbeExperimentConfig(dataset="debug", representation="debug")
        self.assertEqual(cfg.uid(), "7be3e1acd7723d7c7537d85b17584b605994acd8")
        with self.assertRaisesRegex(ValueError, "Required field"):
            ProbeExperimentConfig()
        with self.assertRaisesRegex(ValueError, "Unknown field"):
            ProbeExperimentConfig(dataset="debug", representation="debug", foo="bar")
        with self.assertRaisesRegex(ValueError, "All values must be JSON-serializable"):

            class NotSerializable:
                pass

            ProbeExperimentConfig(
                dataset="debug", representation="debug", batch_size=NotSerializable()
            )

    def test_probe_experiment(self):
        cfg = ProbeExperimentConfig(
            dataset="test", representation="test", max_num_epochs=100, dropout_p=0
        )
        with tempfile.TemporaryDirectory() as ddir, tempfile.TemporaryDirectory() as rdir:
            ddir = pathlib.Path(ddir)
            rdir = pathlib.Path(rdir)

            pathlib.Path(ddir, "test").mkdir()
            pathlib.Path(rdir, "test", "test").mkdir(parents=True)

            # Create fake dataset
            meta = {}
            random.seed(0)
            np.random.seed(0)
            ratio = ["train"] * 8 + ["valid"] + ["test"]
            for i in range(1000):
                y = np.random.randint(0, 4)
                x = np.zeros(4, dtype=np.float32)
                x[y] = 1
                meta[str(i)] = {"y": str(y), "split": ratio[i % len(ratio)]}
                np.save(pathlib.Path(rdir, "test", "test", f"{i}.npy"), x)
            with open(pathlib.Path(ddir, "test", "meta.json"), "w") as f:
                f.write(json.dumps(meta))

            # Train
            exp = ProbeExperiment(
                cfg,
                dataset_root_dir=pathlib.Path(ddir),
                representations_root_dir=pathlib.Path(rdir),
            )
            exp.load_data()
            exp.fit()

            # Evaluate
            results = exp.eval("test")
            self.assertEqual(results["accuracy"], 1)
            self.assertLess(abs(results["loss"] - 0.3611), 0.01)

            # Save/load model
            uid = exp.cfg.uid()
            with tempfile.TemporaryDirectory() as odir:
                exp.save(odir)
                exp_hat = ProbeExperiment.load(
                    odir,
                    uid,
                    dataset_root_dir=pathlib.Path(ddir),
                    representations_root_dir=pathlib.Path(rdir),
                )
            exp_hat.load_data()
            results_hat = exp_hat.eval("test")
            self.assertEqual(results, results_hat)
