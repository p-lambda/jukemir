import copy
import csv
import gzip
import json
import pathlib
import shutil
import tempfile
from collections import Counter, defaultdict

import numpy as np
from scipy.io.wavfile import read as wavread
from tqdm import tqdm

from ..assets import retrieve_and_or_verify_asset
from ..utils import compute_checksum, run_cmd_sync


def _iter_gtzan(metadata_only=False, posthoc_splits=False):
    # Parse splits
    if posthoc_splits:
        did_to_split = {}
        for split_name in ["train", "valid", "test"]:
            split_path = retrieve_and_or_verify_asset(f"GTZAN_{split_name.upper()}")
            with open(split_path, "r") as f:
                split = f.read().strip().splitlines()
            for p in split:
                p = pathlib.PurePath(p)
                did = p.stem
                assert did not in did_to_split
                did_to_split[did] = split_name

    # Parse audio
    uids = set()
    with tempfile.TemporaryDirectory() as d:
        d = pathlib.Path(d)
        asset_path = retrieve_and_or_verify_asset("GTZAN")
        shutil.unpack_archive(str(asset_path), d)

        # Find dataset entries
        genre_to_dids = defaultdict(list)
        for p in sorted(d.rglob("*.wav")):
            genre = p.parts[-2]
            did = p.stem
            genre_to_dids[genre].append(did)

        # Compute metadata
        for genre, dids in genre_to_dids.items():
            for did in dids:
                uid = compute_checksum(did.encode("utf-8"))
                assert uid not in uids
                uids.add(uid)

                metadata = {
                    "y": genre,
                    "extra": {"id": did, "uid": uid},
                }

                if posthoc_splits:
                    if did not in did_to_split:
                        continue
                    split = did_to_split[did]
                    metadata["split"] = split

                result = (uid, metadata)
                if not metadata_only:
                    audio_path = pathlib.Path(d, "genres", genre, f"{did}.wav")
                    result += (audio_path,)
                yield result


def iter_gtzan(metadata_only=False):
    return _iter_gtzan(metadata_only=metadata_only)


def iter_gtzan_ff(metadata_only=False):
    return _iter_gtzan(metadata_only=metadata_only, posthoc_splits=True)


def iter_magnatagatune(metadata_only=False, filter_empty=False):
    audio_uid_to_uids = defaultdict(list)
    uid_to_metadata = {}
    with open(retrieve_and_or_verify_asset("MAGNATAGATUNE_CLIP_METADATA"), "r") as f:
        for row in csv.DictReader(f, delimiter="\t"):
            uid = str(int(row["clip_id"])).zfill(5)
            audio_uid = (row["url"].strip(), row["track_number"].strip())
            assert all(len(a) > 0 for a in audio_uid)
            audio_uid_to_uids[audio_uid].append(uid)
            assert uid not in uid_to_metadata
            uid_to_metadata[uid] = dict(row)
    audio_uid_to_uids = {
        k: sorted(v, key=lambda uid: int(uid_to_metadata[uid]["segmentStart"]))
        for k, v in audio_uid_to_uids.items()
    }

    tag_counts = Counter()
    uid_to_tags = {}
    with open(retrieve_and_or_verify_asset("MAGNATAGATUNE_ANNOTATIONS"), "r") as f:
        for row in csv.DictReader(f, delimiter="\t"):
            uid = str(int(row["clip_id"])).zfill(5)
            assert uid_to_metadata[uid]["mp3_path"] == row["mp3_path"]
            tags = [
                k
                for k, v in row.items()
                if k not in ["clip_id", "mp3_path"] and v == "1"
            ]
            uid_to_tags[uid] = tags
            for t in tags:
                tag_counts[t] += 1

    top_50_tags = sorted(list(tag_counts.items()), key=lambda x: -x[1])[:50]
    top_50_tags = [t for t, c in top_50_tags]
    top_50_tags = set(top_50_tags)
    assert len(top_50_tags) == 50

    with tempfile.TemporaryDirectory() as d:
        if not metadata_only:
            z_path = pathlib.Path(d, "mp3.zip")
            with open(z_path, "wb") as z:
                for i in range(1, 4):
                    path = retrieve_and_or_verify_asset(
                        f"MAGNATAGATUNE_MP3_{str(i).zfill(3)}"
                    )
                    with open(path, "rb") as f:
                        z.write(f.read())
            shutil.unpack_archive(str(z_path), d)

        for uid, metadata in uid_to_metadata.items():
            # Get labels
            tags = uid_to_tags.get(uid)

            # Compute clip info
            audio_uid = (metadata["url"].strip(), metadata["track_number"].strip())
            audio_uids = audio_uid_to_uids[audio_uid]
            audio_duration = max(
                float(uid_to_metadata[clip_uid]["segmentEnd"])
                for clip_uid in audio_uids
            )

            # Find MP3 path
            if uid in ["35644", "55753", "57881"]:
                # NOTE: These UIDs point to corrupt MP3s
                mp3_path = ""
            else:
                mp3_path = metadata["mp3_path"].strip()

            # Determine split
            if len(mp3_path) == 0:
                split = None
            else:
                folder = mp3_path.split("/")[0]
                assert len(folder) == 1 and folder in "0123456789abcdef"
                if folder in "0123456789ab":
                    split = "train"
                elif folder == "c":
                    split = "valid"
                else:
                    assert folder in "def"
                    split = "test"

            result = (
                uid,
                {
                    "split": split,
                    "clip": {
                        "audio_uid": audio_uid,
                        "audio_duration": audio_duration,
                        "clip_idx": audio_uids.index(uid),
                        "clip_offset": float(metadata["segmentStart"]),
                    },
                    "y": None
                    if tags is None
                    else [t for t in tags if t in top_50_tags],
                    "y_all": tags,
                    "extra": metadata,
                },
            )
            if filter_empty:
                tags = result[1]["y"]
                if tags is None or len(tags) == 0:
                    result[1]["split"] = None
            if not metadata_only:
                if len(mp3_path) == 0:
                    mp3_path = None
                else:
                    mp3_path = pathlib.Path(d, metadata["mp3_path"])
                    assert mp3_path.stat().st_size > 0
                result = result + (mp3_path,)
            yield result


def iter_emomusic(metadata_only=False):
    with tempfile.TemporaryDirectory() as d:
        d = pathlib.Path(d)
        annotations_path = retrieve_and_or_verify_asset("EMOMUSIC_ANNOTATIONS")
        shutil.unpack_archive(str(annotations_path), d)

        def parse_minsec(s):
            s = s.split(".")
            t = float(s[0]) * 60
            if len(s) > 1:
                assert len(s) == 2
                if len(s[1]) == 1:
                    s[1] += "0"
                t += float(s[1])
            return t

        audio_uids = set()
        uid_to_metadata = {}
        for stem in [
            "songs_info",
            "static_annotations",
            "valence_cont_average",
            "valence_cont_std",
            "arousal_cont_average",
            "arousal_cont_std",
        ]:
            with open(pathlib.Path(d, f"{stem}.csv"), "r") as f:
                for row in csv.DictReader(f):
                    row = {k: v.strip() for k, v in row.items()}
                    uid = str(int(row["song_id"])).zfill(4)
                    if stem == "songs_info":
                        assert uid not in uid_to_metadata
                        audio_uid = (row["Artist"], row["Song title"])
                        # NOTE: Only one clip per song in this dataset
                        assert audio_uid not in audio_uids
                        audio_uids.add(audio_uid)
                        clip_start = parse_minsec(row["start of the segment (min.sec)"])
                        clip_end = parse_minsec(row["end of the segment (min.sec)"])
                        clip_dur = clip_end - clip_start
                        assert clip_dur == 45.0
                        uid_to_metadata[uid] = {
                            "split": "test"
                            if row["Mediaeval 2013 set"] == "evaluation"
                            else "train",
                            "clip": {
                                "audio_uid": audio_uid,
                                "audio_duration": clip_end,
                                "clip_idx": 0,
                                "clip_offset": clip_start,
                            },
                            "y": None,
                            "extra": {},
                        }
                    else:
                        assert uid in uid_to_metadata
                    uid_to_metadata[uid]["extra"][stem] = row
                    if stem == "static_annotations":
                        uid_to_metadata[uid]["y"] = [
                            float(row["mean_valence"]),
                            float(row["mean_arousal"]),
                        ]

        # Normalize
        arousals = [
            metadata["y"][0]
            for metadata in uid_to_metadata.values()
            if metadata["split"] == "train"
        ]
        valences = [
            metadata["y"][1]
            for metadata in uid_to_metadata.values()
            if metadata["split"] == "train"
        ]
        arousal_mean = np.mean(arousals)
        arousal_std = np.std(arousals)
        valence_mean = np.mean(valences)
        valence_std = np.std(valences)
        for metadata in uid_to_metadata.values():
            metadata["y"] = [
                (metadata["y"][0] - arousal_mean) / arousal_std,
                (metadata["y"][1] - valence_mean) / valence_std,
            ]

        ratios = ["train"] * 8 + ["valid"] * 2
        for uid, metadata in uid_to_metadata.items():
            if metadata["split"] == "train":
                artist = metadata["extra"]["songs_info"]["Artist"]
                artist = "".join(
                    [
                        c
                        for c in artist.lower()
                        if (ord(c) < 128 and (c.isalpha() or c.isspace()))
                    ]
                )
                artist = " ".join(artist.split())
                artist_id = int(
                    compute_checksum(artist.encode("utf-8"), algorithm="sha1"), 16
                )
                split = ratios[artist_id % len(ratios)]
                metadata["split"] = split

        if not metadata_only:
            clips_path = retrieve_and_or_verify_asset("EMOMUSIC_CLIPS")
            shutil.unpack_archive(str(clips_path), d)

        for uid, metadata in uid_to_metadata.items():
            # Yield result
            result = (uid, metadata)
            if not metadata_only:
                mp3_path = pathlib.Path(d, "clips_45seconds", f"{int(uid)}.mp3")
                result = result + (mp3_path,)
            yield result


def _iter_giantsteps(metadata_only=False, clip_duration=None):
    with tempfile.TemporaryDirectory() as d:
        d = pathlib.Path(d)
        uids = set()
        for split_name in ["train", "test"]:
            if split_name == "train":
                asset_path = retrieve_and_or_verify_asset(
                    "GIANTSTEPS_MTG_KEY_ANNOTATIONS"
                )
                code = pathlib.Path(
                    d,
                    f"giantsteps-mtg-key-dataset-fd7b8c584f7bd6d720d170c325a6d42c9bf75a6b",
                )
                mp3_asset_template = "GIANTSTEPS_MTG_KEY_{}"
            else:
                asset_path = retrieve_and_or_verify_asset("GIANTSTEPS_KEY_ANNOTATIONS")
                code = pathlib.Path(
                    d,
                    f"giantsteps-key-dataset-c8cb8aad2cb53f165be51ea099d0dc75c64a844f",
                )
                mp3_asset_template = "GIANTSTEPS_KEY_{}"

            shutil.unpack_archive(str(asset_path), d)

            if split_name == "train":
                did_to_metadata = {}
                with open(
                    pathlib.Path(code, "annotations", "beatport_metadata.txt"), "r"
                ) as f:
                    for row in csv.DictReader(f, delimiter="\t"):
                        did_to_metadata[int(row["ID"])] = row

                # NOTE: This seemingly-arbitrary split induces target of 80/20
                ratios = (["train"] * 100) + (["valid"] * 16)
                artist_to_split = {}
                for metadata in did_to_metadata.values():
                    artists = [a.strip() for a in metadata["ARTIST"].strip().split(",")]
                    artist_ids = [
                        int(
                            compute_checksum(
                                a.lower().encode("utf-8"), algorithm="sha1"
                            ),
                            16,
                        )
                        for a in artists
                    ]
                    artist_splits = [ratios[i % len(ratios)] for i in artist_ids]
                    for artist, split in zip(artists, artist_splits):
                        artist_to_split[artist] = split

                # All collaborators of valid artists are valid (run twice for two-hop)
                for _ in range(2):
                    for metadata in did_to_metadata.values():
                        artists = [
                            a.strip() for a in metadata["ARTIST"].strip().split(",")
                        ]
                        artist_splits = [artist_to_split[a] for a in artists]
                        if "valid" in artist_splits:
                            for a in artists:
                                artist_to_split[a] = "valid"

                did_to_annotations = {}
                with open(
                    pathlib.Path(code, "annotations", "annotations.txt"), "r"
                ) as f:
                    for row in csv.DictReader(f, delimiter="\t"):
                        did_to_annotations[int(row["ID"])] = row

            for path in pathlib.Path(code, "md5").glob("*.md5"):
                did = int(path.stem.split(".")[0])
                uid = str(did).zfill(7)
                assert uid not in uids
                uids.add(uid)

                extra = {"id": did}
                if split_name == "train":
                    extra["beatport_metadata"] = did_to_metadata[did]
                    extra["annotations"] = did_to_annotations[did]

                for annotation in [
                    "genre",
                    "key",
                    "jams",
                    "giantsteps.genre",
                    "giantsteps.key",
                ]:
                    if annotation == "jams" and split_name == "train":
                        continue
                    if "." in annotation:
                        adir, aext = annotation.split(".")
                    else:
                        adir = annotation
                        aext = annotation
                    path = pathlib.Path(code, "annotations", adir, f"{did}.LOFI.{aext}")
                    with open(path, "r") as f:
                        contents = f.read()
                    if annotation == "jams":
                        contents = json.loads(contents)
                    extra[annotation] = contents

                if split_name == "train":
                    # NOTE: Skips low-confidence as in (Korzeniowski and Widmer 2018)
                    if int(extra["annotations"]["C"]) != 2:
                        continue
                    # NOTE: Skips multiple keys as in (Korzeniowski and Widmer 2018)
                    if "/" in extra["annotations"]["MANUAL KEY"]:
                        continue
                    tonic, scale = extra["annotations"]["MANUAL KEY"].split()
                    assert extra["key"].startswith(" ".join((tonic.lower(), scale)))
                    enharmonic = {
                        "C#": "Db",
                        "D#": "Eb",
                        "F#": "Gb",
                        "G#": "Ab",
                        "A#": "Bb",
                    }
                    tonic = enharmonic.get(tonic, tonic)

                    artists = [
                        a.strip()
                        for a in extra["beatport_metadata"]["ARTIST"].strip().split(",")
                    ]
                    artist_splits = [artist_to_split[a] for a in artists]
                    assert len(set(artist_splits)) == 1
                    induced_split = artist_splits[0]
                else:
                    tonic, scale = extra["key"].split()
                    induced_split = "test"
                y = " ".join((tonic, scale))

                metadata = {"split": induced_split, "y": y, "extra": extra}

                mp3_asset_tag = mp3_asset_template.format(did)

                if clip_duration is not None:
                    mp3_path = retrieve_and_or_verify_asset(mp3_asset_tag)
                    status, stdout, stderr = run_cmd_sync(
                        f"ffprobe -i {mp3_path} -show_entries format=duration",
                        timeout=60,
                    )
                    assert status == 0
                    duration = float(stdout.strip().splitlines()[1].split("=")[1])
                    metadata["clip"] = {
                        "audio_uid": uid,
                        "audio_duration": duration,
                        "clip_idx": None,
                        "clip_offset": None,
                    }
                    for clip_idx, clip_offset in enumerate(
                        np.arange(0, duration, clip_duration)
                    ):
                        this_clip_duration = min(duration - clip_offset, clip_duration)
                        assert (
                            this_clip_duration >= 0
                            and this_clip_duration <= clip_duration
                        )
                        if this_clip_duration < clip_duration:
                            continue
                        clip_uid = f"{uid}-{clip_idx}"
                        clip_metadata = copy.deepcopy(metadata)
                        clip_metadata["clip"]["clip_idx"] = clip_idx
                        clip_metadata["clip"]["clip_offset"] = clip_offset
                        result = (
                            clip_uid,
                            clip_metadata,
                            mp3_path,
                            clip_offset,
                            clip_duration,
                        )
                        yield result[: 2 if metadata_only else 5]
                else:
                    result = (uid, metadata)
                    if not metadata_only:
                        mp3_path = retrieve_and_or_verify_asset(mp3_asset_tag)
                        result += (mp3_path,)
                    yield result


def iter_giantsteps(metadata_only=False):
    return _iter_giantsteps(metadata_only=metadata_only, clip_duration=None)


def iter_giantsteps_clips(metadata_only=False):
    return _iter_giantsteps(metadata_only=metadata_only, clip_duration=30.0)


def iter_debug(metadata_only=False):
    yield ("debug", {"y": "guitar"}, retrieve_and_or_verify_asset("DEBUG_MP3"))


def write_dataset_json(dataset, path):
    path = pathlib.Path(path)
    if path.suffix == ".gz":
        open_fn = lambda: gzip.open(path, "wt", encoding="utf-8")
    else:
        open_fn = lambda: open(path, "w")
    with open_fn() as f:
        json.dump(dataset, f, indent=2, sort_keys=True)


def read_dataset_json(path):
    path = pathlib.Path(path)
    if path.suffix == ".gz":
        open_fn = lambda: gzip.open(path, "rt", encoding="utf-8")
    else:
        open_fn = lambda: open(path, "r")
    with open_fn() as f:
        return json.load(f)


def cache_dataset(dataset_iter, out_dir, progress_bar=True):
    out_dir = pathlib.Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    metadata_path = pathlib.Path(out_dir, "meta.json")
    audio_dir = pathlib.Path(out_dir, "wav")

    all_metadata = {}
    _tqdm = tqdm if progress_bar else lambda x: x
    for example in _tqdm(dataset_iter):
        if len(example) == 2:
            uid, metadata = example
        elif len(example) >= 3:
            if len(example) == 3:
                uid, metadata, src_audio_path = example
                clip_offset = None
            elif len(example) == 5:
                uid, metadata, src_audio_path, clip_offset, clip_duration = example
            else:
                raise ValueError("Bad iterator")
            if src_audio_path is not None:
                dest_audio_path = pathlib.Path(audio_dir, f"{uid}.wav")
                dest_audio_path.parent.mkdir(exist_ok=True)
                clip_args = (
                    ""
                    if clip_offset is None
                    else f"-ss {clip_offset} -t {clip_duration}"
                )
                status, stdout, stderr = run_cmd_sync(
                    f"ffmpeg -y -i {src_audio_path} {clip_args} -ac 1 -bitexact {dest_audio_path}",
                    timeout=60,
                )
                try:
                    sr, audio = wavread(dest_audio_path)
                    assert audio.ndim == 1
                    assert audio.shape[0] > 0
                    if "clip" in metadata:
                        metadata["clip"]["clip_duration"] = audio.shape[0] / sr
                except:
                    raise Exception(f"Could not convert source audio to wav:\n{stderr}")
        else:
            raise ValueError("Bad iterator")

        if uid in all_metadata:
            raise ValueError("Duplicate UID in interator")
        all_metadata[uid] = metadata

    write_dataset_json(all_metadata, metadata_path)
