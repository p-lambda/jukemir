import json
import logging
import math
import pathlib
import pickle
import random
import tempfile

import mir_eval
import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
from sklearn.metrics import average_precision_score, r2_score, roc_auc_score
from sklearn.preprocessing import StandardScaler

from .. import CACHE_DIR
from ..utils import compute_checksum

DATASET_TO_ATTRS = {
    "test": {
        "num_outputs": 4,
        "output_type": "multiclass",
        "max_num_epochs": None,
        "labels": ["0", "1", "2", "3"],
    },
    "gtzan_ff": {
        "num_outputs": 10,
        "output_type": "multiclass",
        "max_num_epochs": 4096,
        "labels": """blues, classical, country, disco, hiphop, jazz, metal, pop, reggae, rock""".split(
            ", "
        ),
    },
    "giantsteps_clips": {
        "num_outputs": 24,
        "output_type": "multiclass",
        "max_num_epochs": 512,
        "labels": """C major, Db major, D major, Eb major, E major, F major, Gb major, G major, Ab major, A major, Bb major, B major, C minor, Db minor, D minor, Eb minor, E minor, F minor, Gb minor, G minor, Ab minor, A minor, Bb minor, B minor""".split(
            ", "
        ),
    },
    "magnatagatune": {
        "num_outputs": 50,
        "output_type": "multilabel",
        "max_num_epochs": 128,
        "labels": """guitar, classical, slow, techno, strings, drums, electronic, rock, fast, piano, ambient, beat, violin, vocal, synth, female, indian, opera, male, singing, vocals, no vocals, harpsichord, loud, quiet, flute, woman, male vocal, no vocal, pop, soft, sitar, solo, man, classic, choir, voice, new age, dance, male voice, female vocal, beats, harp, cello, no voice, weird, country, metal, female voice, choral""".split(
            ", "
        ),
    },
    "emomusic": {
        "num_outputs": 2,
        "output_type": "regression",
        "max_num_epochs": 4096,
        "labels": None,
    },
}


class SimpleMLP(nn.Module):
    def __init__(
        self,
        num_features,
        hidden_layer_sizes,
        num_outputs,
        dropout_input=True,
        dropout_p=0.5,
    ):
        super().__init__()
        d = num_features
        self.num_layers = len(hidden_layer_sizes)
        for i, ld in enumerate(hidden_layer_sizes):
            setattr(self, f"hidden_{i}", nn.Linear(d, ld))
            d = ld
        self.output = nn.Linear(d, num_outputs)
        self.dropout = nn.Dropout(p=dropout_p)

    def forward(self, x):
        x = self.dropout(x)
        for i in range(self.num_layers):
            x = getattr(self, f"hidden_{i}")(x)
            x = F.relu(x)
            x = self.dropout(x)
        return self.output(x)


class ProbeExperimentConfig(dict):
    _DEFAULTS = {
        "dataset": None,
        "representation": None,
        "data_standardization": True,
        "hidden_layer_sizes": [],
        "batch_size": 64,
        "learning_rate": 1e-3,
        "dropout_input": True,
        "dropout_p": 0.5,
        "l2_weight_decay": None,
        "max_num_epochs": None,
        "early_stopping_metric": "primary",
        "early_stopping": True,
        "early_stopping_eval_frequency": 8,
        "early_stopping_boredom": 256,
        "seed": 0,
    }
    _REQUIRED = ["dataset", "representation"]

    def __init__(self, *args, **kwargs):
        kwargs = dict(*args, **kwargs)
        for field in self._REQUIRED:
            if field not in kwargs:
                raise ValueError(f"Required field {field} missing")
        for field in kwargs.keys():
            if field not in self._DEFAULTS:
                raise ValueError(f"Unknown field {field} specified")

        for field, value in self._DEFAULTS.items():
            if field in kwargs:
                value = kwargs[field]
            self[field] = value

        try:
            json.dumps(self)
        except:
            raise ValueError("All values must be JSON-serializable")

    def uid(self):
        return compute_checksum(
            json.dumps(self, indent=2, sort_keys=True).encode("utf-8"), algorithm="sha1"
        )


class ProbeExperiment:
    def __init__(
        self,
        cfg,
        pretrained_scaler=None,
        pretrained_probe=None,
        summarize_frequency=8,
        dataset_root_dir=pathlib.Path(CACHE_DIR, "processed"),
        representations_root_dir=pathlib.Path(CACHE_DIR, "representations"),
    ):
        if not cfg["early_stopping"] and cfg["max_num_epochs"] is None:
            raise ValueError("No termination criteria specified")

        self.cfg = cfg
        self.scaler = pretrained_scaler
        self.probe = pretrained_probe
        self.summarize_frequency = summarize_frequency
        self.dataset_root_dir = dataset_root_dir
        self.representations_root_dir = representations_root_dir
        self.device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
        if self.probe is not None:
            self.probe.to(self.device)

    def load_data(self):
        # Load data from disk
        logging.info("Loading data")
        with open(
            pathlib.Path(self.dataset_root_dir, self.cfg["dataset"], "meta.json"), "r"
        ) as f:
            data = json.load(f)
        for uid in data.keys():
            if data[uid]["split"] not in ["train", "valid", "test"]:
                continue
            data[uid]["x"] = np.load(
                pathlib.Path(
                    self.representations_root_dir,
                    self.cfg["dataset"],
                    self.cfg["representation"],
                    f"{uid}.npy",
                )
            )

        # Organize data
        self.split_to_uids = {"train": [], "valid": [], "test": []}
        self.split_to_X = {}
        self.split_to_y = {}
        for uid, attrs in data.items():
            if data[uid]["split"] not in ["train", "valid", "test"]:
                continue
            self.split_to_uids[attrs["split"]].append(uid)
        self.split_to_uids = {k: sorted(v) for k, v in self.split_to_uids.items()}
        for split in ["train", "valid", "test"]:
            if self.cfg["seed"] is not None:
                random.seed(self.cfg["seed"])
            random.shuffle(self.split_to_uids[split])
        for split, uids in self.split_to_uids.items():
            if len(uids) == 0:
                raise Exception("Empty split")
            X = np.array([data[uid]["x"] for uid in uids], dtype=np.float32)
            y = [data[uid]["y"] for uid in uids]
            self.split_to_X[split] = X
            self.split_to_y[split] = y

        if len(set(X.shape[1] for X in self.split_to_X.values())) != 1:
            raise Exception()

    def raw_labels_to_targets(self, y):
        output_type = DATASET_TO_ATTRS[self.cfg["dataset"]]["output_type"]

        if output_type != "regression":
            id_to_label = DATASET_TO_ATTRS[self.cfg["dataset"]]["labels"]
            label_to_id = {v: k for k, v in enumerate(id_to_label)}
            assert len(id_to_label) == len(label_to_id)

        num_outputs = DATASET_TO_ATTRS[self.cfg["dataset"]]["num_outputs"]
        if output_type == "multiclass":
            targets = np.array([label_to_id[yi] for yi in y], dtype=np.int64)
        elif output_type == "multilabel":
            targets = np.zeros((len(y), num_outputs), dtype=np.uint8)
            for i, tags in enumerate(y):
                for t in tags:
                    targets[i, label_to_id[t]] = 1
        elif output_type == "regression":
            targets = np.array(y, dtype=np.float32)
        else:
            raise NotImplementedError()

        return targets

    def compute_loss(self, logits, y):
        output_type = DATASET_TO_ATTRS[self.cfg["dataset"]]["output_type"]
        if output_type == "multiclass":
            loss = F.cross_entropy(logits, y, reduction="mean")
        elif output_type == "multilabel":
            loss = F.binary_cross_entropy_with_logits(
                logits, y.float(), reduction="mean"
            )
        elif output_type == "regression":
            # TODO: Optimize R2 directly? https://stackoverflow.com/questions/65840698/how-to-make-r2-score-in-nn-lstm-pytorch
            loss = F.mse_loss(logits, y, reduction="mean")
        else:
            raise NotImplementedError()

        return loss

    def train(self, wandb=False):
        if wandb:
            import wandb as wandb_lib

            wandb_lib.init(
                project="jukemir",
                name=f"{self.cfg['dataset']}-{self.cfg['representation']}-{self.cfg.uid()}",
                reinit=True,
            )
            wandb_lib.config.update(self.cfg)

        # Set seed
        if self.cfg["seed"] is not None:
            random.seed(self.cfg["seed"])
            torch.manual_seed(self.cfg["seed"])
            torch.cuda.manual_seed_all(self.cfg["seed"])

        # Create model
        logging.info("Creating model")
        self.probe = SimpleMLP(
            self.split_to_X["train"].shape[1],
            self.cfg["hidden_layer_sizes"],
            DATASET_TO_ATTRS[self.cfg["dataset"]]["num_outputs"],
            dropout_input=self.cfg["dropout_input"],
            dropout_p=self.cfg["dropout_p"],
        )
        self.probe.to(self.device)
        self.probe.train()

        # Create optimizer
        optimizer = torch.optim.Adam(
            self.probe.parameters(),
            lr=self.cfg["learning_rate"],
            weight_decay=0
            if self.cfg["l2_weight_decay"] is None
            else self.cfg["l2_weight_decay"],
        )

        # Retrieve dataset
        X_train = self.split_to_X["train"]
        y_train = self.raw_labels_to_targets(self.split_to_y["train"])

        # Fit scaler
        self.scaler = StandardScaler(
            with_mean=self.cfg["data_standardization"],
            with_std=self.cfg["data_standardization"],
        )
        self.scaler.fit(X_train)

        # Train model
        step = 0
        early_stopping_best_score = float("-inf")
        early_stopping_boredom = 0
        early_stopping_state_dict = None
        while True:
            # Check if exceeded max num epochs
            epoch = (step * self.cfg["batch_size"]) / X_train.shape[0]
            if (
                self.cfg["max_num_epochs"] is not None
                and epoch > self.cfg["max_num_epochs"]
            ):
                break

            # Evaluate for early stopping
            if (
                self.cfg["early_stopping"]
                and step % self.cfg["early_stopping_eval_frequency"] == 0
            ):
                if early_stopping_boredom >= self.cfg["early_stopping_boredom"]:
                    if early_stopping_state_dict is not None:
                        self.probe.load_state_dict(early_stopping_state_dict)
                    break
                with torch.no_grad():
                    self.probe.eval()
                    metrics = self.eval("valid")
                    if self.cfg["early_stopping_metric"].startswith("-"):
                        score = -1 * metrics[self.cfg["early_stopping_metric"][1:]]
                    else:
                        score = metrics[self.cfg["early_stopping_metric"]]
                    self.probe.train()
                    logging.info(f"eval,{step},{score}")
                    if wandb:
                        metrics.update(
                            {
                                "early_stopping_score": score,
                                "early_stopping_best_score": early_stopping_best_score,
                                "early_stopping_boredom": early_stopping_boredom,
                            }
                        )
                        wandb_lib.log(metrics, step=step)
                    if math.isnan(score):
                        raise Exception("NaN score")
                    if score > early_stopping_best_score:
                        early_stopping_best_score = score
                        early_stopping_boredom = 0
                        # NOTE: This is just an ignorant way to copy the state dict
                        # TODO: Reduce ignorance?
                        with tempfile.NamedTemporaryFile(suffix=".pt") as f:
                            torch.save(self.probe.state_dict(), f.name)
                            early_stopping_state_dict = torch.load(f.name)
                    else:
                        early_stopping_boredom += 1

            # Create batch
            idxs = random.sample(
                list(range(X_train.shape[0])),
                min(self.cfg["batch_size"], X_train.shape[0]),
            )
            X, y = X_train[idxs], y_train[idxs]
            X = self.scaler.transform(X)
            X = torch.tensor(X, dtype=torch.float32, device=self.device)
            y = torch.tensor(y, device=self.device)

            # Update
            optimizer.zero_grad()
            loss = self.compute_loss(self.probe(X), y)
            loss.backward()
            optimizer.step()
            step += 1

            # Summarize
            if step % self.summarize_frequency == 0:
                loss = loss.item()
                logging.debug(f"train,{step},{loss}")
                if wandb:
                    wandb_lib.log({"train_loss": loss}, step=step)

    def eval_logits(self, X):
        X = self.scaler.transform(X)
        with torch.no_grad():
            self.probe.eval()
            logits = []
            for i in range(0, X.shape[0], self.cfg["batch_size"]):
                X_batch = torch.tensor(
                    X[i : i + self.cfg["batch_size"]],
                    dtype=torch.float32,
                    device=self.device,
                )
                logits.append(self.probe(X_batch))
            logits = torch.cat(logits, dim=0)
        return logits

    def eval(self, uids_or_split_name, X=None, y=None):
        if type(uids_or_split_name) == str:
            split_name = uids_or_split_name
            uids = self.split_to_uids[split_name]
            X = self.split_to_X[split_name]
            y = self.split_to_y[split_name]
        else:
            uids = uids_or_split_name
        y = self.raw_labels_to_targets(y)

        metrics = {}
        primary_metric_name = None

        # Compute logits / task-specific loss
        with torch.no_grad():
            self.probe.eval()
            logits = self.eval_logits(X)
            y_tensor = torch.tensor(y, device=self.device)
            metrics["loss"] = self.compute_loss(logits, y_tensor).item()
            logits = logits.cpu().numpy()

        # Copute task-specific metrics
        if self.cfg["dataset"] in ["test", "gtzan_ff"]:
            primary_metric_name = "accuracy"
            y_preds = np.argmax(logits, axis=1)
            y_correct = y_preds == y
            metrics["accuracy"] = y_correct.astype(np.float32).mean()
        elif self.cfg["dataset"] == "giantsteps_clips":
            primary_metric_name = "clip_score"

            # Get clip probabilities
            clip_labels = y
            with torch.no_grad():
                clip_probs = (
                    F.softmax(torch.tensor(logits, device=self.device), dim=-1)
                    .cpu()
                    .numpy()
                )

            # Aggregate songs
            song_uid_to_clip_uids = defaultdict(list)
            song_uid_to_label = {}
            for uid, label in zip(uids, y):
                clip_uid, song_uid = uid.split("-")
                song_uid_to_clip_uids[song_uid].append(clip_uids)
                if song_uid in song_uid_to_label:
                    assert song_uid_to_label[song_uid] == label
                song_uid_to_label[song_uid] = label

            # Compute metrics
            id_to_label = DATASET_TO_ATTRS["giantsteps_clips"]["labels"]

            def _compute_accuracy_and_scores(preds, labels):
                correct = y_preds == y
                accuracy = correct.astype(np.float32).mean()
                scores = [
                    mir_eval.key.weighted_score(
                        id_to_label[ref_key], id_to_label[est_key]
                    )
                    for ref_key, est_key in zip(labels, preds)
                ]
                return accuracy, np.mean(scores)

            for prefix, preds, labels in [
                (
                    "clip",
                    np.argmax(clip_probs, axis=1),
                    clip_labels,
                )
            ]:
                accuracy, scores = _compute_accuracy_and_scores(preds, labels)
                metrics[f"{prefix}_accuracy"] = accuracy
                metrics[f"{prefix}_score"] = score

        elif self.cfg["dataset"] == "magnatagatune":
            primary_metric_name = "auc_roc"
            with torch.no_grad():
                y_probs = (
                    torch.sigmoid(torch.tensor(logits, device=self.device))
                    .cpu()
                    .numpy()
                )
            metrics["auc_roc"] = roc_auc_score(y, y_probs, average="macro")
            metrics["ap"] = average_precision_score(y, y_probs, average="macro")
        elif self.cfg["dataset"] == "emomusic":
            primary_metric_name = "r2"
            metrics["r2"] = r2_score(y, logits)
            metrics["arousal_r2"] = r2_score(y[:, 0], logits[:, 0])
            metrics["valence_r2"] = r2_score(y[:, 1], logits[:, 1])
        else:
            raise NotImplementedError()

        # Convert to simple Python types
        for k, v in metrics.items():
            if isinstance(v, (np.ndarray, np.generic)):
                metrics[k] = v.tolist()

        assert "primary" not in metrics
        metrics["primary"] = metrics[primary_metric_name]
        return metrics

    def save(self, root_dir):
        uid = self.cfg.uid()
        model_dir = pathlib.Path(root_dir, uid)
        model_dir.mkdir(exist_ok=True)
        with open(pathlib.Path(model_dir, f"cfg.json"), "w") as f:
            f.write(json.dumps(self.cfg, indent=2, sort_keys=True))
        with open(pathlib.Path(model_dir, f"scaler.pkl"), "wb") as f:
            pickle.dump(self.scaler, f)
        torch.save(self.probe.state_dict(), pathlib.Path(model_dir, f"probe.pt"))
        with open(pathlib.Path(model_dir, f"metrics.json"), "w") as f:
            f.write(json.dumps(self.eval("valid"), indent=2, sort_keys=True))

    @classmethod
    def load(cls, root_dir, uid, **kwargs):
        model_dir = pathlib.Path(root_dir, uid)
        with open(pathlib.Path(model_dir, f"cfg.json"), "r") as f:
            cfg = json.load(f)
        with open(pathlib.Path(model_dir, f"scaler.pkl"), "rb") as f:
            scaler = pickle.load(f)
        state_dict = torch.load(pathlib.Path(model_dir, f"probe.pt"))
        if len(cfg["hidden_layer_sizes"]) > 0:
            input_layer = "hidden_0.weight"
        else:
            input_layer = "output"
        probe = SimpleMLP(
            state_dict[input_layer].shape[1],
            cfg["hidden_layer_sizes"],
            DATASET_TO_ATTRS[cfg["dataset"]]["num_outputs"],
            dropout_input=cfg["dropout_input"],
            dropout_p=cfg["dropout_p"],
        )
        probe.load_state_dict(state_dict)
        return cls(cfg, pretrained_scaler=scaler, pretrained_probe=probe, **kwargs)
