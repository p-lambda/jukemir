# Jukebox for MIR transfer learning

This repository contains code for our paper [_Codified audio language modeling learns useful representations for music information retrieval_](https://arxiv.org/abs/2107.05677) (Castellon et al. 2021), which demonstrates that [OpenAI's Jukebox](https://openai.com/blog/jukebox/) (Dhariwal et al. 2020) provides rich representations for music transfer learning.

This README is divided into three standalone sections. The [first section](#simple-example-of-inference-with-jukebox-in-colab), providing a Colab notebook that allows you to perform inference on the full Jukebox model for free, is optimized for simplicity and ease-of-use. The [second section](#simple-example-of-using-jukebox-for-transfer-learning) requires some setting up, but  provides an end-to-end example of genre detection using representations from Jukebox. The [third section](#reproducing-results-from-our-paper) is optimized for reproducibility and provides step-by-step instructions for reproducing the results from our paper.

In addition, we provide a Python library for extracting representations from Jukebox in just a couple lines of code. Check it out [here](https://github.com/rodrigo-castellon/jukemirlib)!

## Simple example of inference with Jukebox in Colab

Despite Jukebox's large size, it can be made to run on a single Tesla T4 GPU on Colab for free. Check out the [notebook here](https://colab.research.google.com/drive/1x4qt_-SLrSSRzOuz7dkuxTK-o4fSoH9n?usp=sharing). In the notebook, you should be able to use the API to extract representations in a couple lines of code:

```python
audio = load_audio_from_file(fname, offset=0.0, duration=25)

representations = get_acts_from_audio(audio=audio,
                                      layers=[36],
                                      meanpool=True)

print(f"Got representations {representations}")
print(f"Its shape is {representations[36].shape}")
```

Simply pass the audio, layer numbers you're interested in, whether you want to mean-pool, and you'll get representations from Jukebox out. We accomplish these memory savings by [initializing the model with the meta device](https://huggingface.co/docs/accelerate/v0.11.0/en/big_modeling), letting you perform end-to-end inference on any commodity GPU. All in all, the notebook provides certain benefits over the `jukemir` codebase, including:
- a clean API for extracting representations in a customizable manner
- compute savings when performing inference on short audio clips
- memory-efficient model initialization, enabling extracting representations from later layers in one step

## Simple example of using Jukebox for transfer learning

NOTE: the original hosting link for GTZAN appears to be dead, but you can try downloading it from [The Internet Archive](https://web.archive.org/web/20211207012050/http://opihi.cs.uvic.ca/sound/genres.tar.gz) instead.

This section provides a quick demonstration of using Jukebox for transfer learning on the GTZAN genre detection dataset (Tzanetakis and Cook 2002).

Our codebase uses Docker to simplify the process of extracting representations from Jukebox for new audio files. If you do not already have Docker on your machine, please follow [these instructions](https://docs.docker.com/get-docker/) to install it.

Once docker is installed, run the following to download and extract the dataset:

```sh
wget http://opihi.cs.uvic.ca/sound/genres.tar.gz
tar xvfz genres.tar.gz
```

Next, we will extract representations from Jukebox. This will require a system with at least 30GB of RAM and a GPU with at least 12GB VRAM. Feature extraction will take a few hours (though it can be parallelized). If your system does not meet these requirements, you can alternatively [download the pre-computed features](https://nlp.stanford.edu/data/cdonahue/jukemir/precomputed/gtzan-jukebox.tar.gz). If your system does meet the requirements, run:

```sh
for GENRE in blues classical country disco hiphop jazz metal pop reggae rock
do
	echo $GENRE
	docker run \
		-it \
		--rm \
		-v $(pwd)/genres/$GENRE:/input \
		-v $(pwd)/features:/output \
		jukemir/representations_jukebox
done
```

This pre-built Docker container ([`jukemir/representations_jukebox`](https://hub.docker.com/repository/docker/jukemir/representations_jukebox)) automatically extracts representations for all files in its input folder (`/input`) and saves a standard numpy array for each file in its output folder (`/output`). You can use Docker's `-v` directive to link input and output folders on your host machine to these directories (see above for an example).

Once you've extracted representations from Jukebox, you can train simple classifiers on top of them for different MIR tasks. For example, the following Python script trains and evaluates a simple SVM classifier on GTZAN:

```py
import glob
import os
import random

import numpy as np
from sklearn.svm import SVC
from sklearn.model_selection import cross_val_score
from sklearn.pipeline import make_pipeline
from sklearn.preprocessing import StandardScaler

# Find numpy paths (and randomize to remove label ordering)
npy_paths = sorted(glob.glob('features/*.npy'))
assert len(npy_paths) == 1000
random.seed(0)
random.shuffle(npy_paths)

# Load data
X = np.array([np.load(p) for p in npy_paths])
y = np.array([os.path.split(p)[1].split('.')[0] for p in npy_paths])

# Run cross-validation
clf = make_pipeline(StandardScaler(), SVC())
scores = cross_val_score(clf, X, y, cv=10)
print('{:.1f} +- {:.1f}'.format(np.mean(scores) * 100, np.std(scores) * 100))
```

This should print out `92.5 +- 2.9`, though results may differ slightly due to minor numerical differences. Note that, for simplicity, the above code performs the _traditional_ evaluation for GTZAN which uses 10-fold cross validation. In our paper, we evaluate on the "fault-filtered" GTZAN split from Kereliuk et al. 2015.

## Reproducing results from our paper

This section provides step-by-step instructions for reproducing all results from our paper. All code is executed within [pre-built Docker containers](https://hub.docker.com/orgs/jukemir/repositories) to increase reproducibility.

### Setting up Docker and cache

If you do not already have Docker on your machine, please follow [these instructions](https://docs.docker.com/get-docker/) to install it.

To initialize the default cache directory, **run `mkdir ~/.jukemir`**. If you would prefer to use a different directory, set the appropriate environment variable: `export JUKEMIR_CACHE_DIR=<your desired directory>`.

To launch our pre-built Docker container in the background, **navigate to the [`reproduce`](reproduce/) folder and run `./0_docker.sh`**. You may kill and remove this container at any time by typing `docker kill jukemir`.

### Download pre-computed representations (skipping steps 1-3)

Unless you are probing a new dataset or comparing a new representation on an existing dataset, you can **skip steps 1-3 by downloading the pre-computed representations via `./123_precomputed.sh`**. If you need to selectively download particular pre-computed representations, see [`jukemir/assets/precomputed.json`](jukemir/assets/precomputed.json) for relevant URLs.

### (Step 1) Downloading the datasets

Once Docker is running, **run [`./1_download.sh`](reproduce/1_download.sh)** to download all of the raw dataset assets from their respective sources. Note that this downloads about 8GB of files and may take quite a long time depending on the speed of your network connection.

The resultant files will be downloaded to the `datasets` subdirectory of your cache directory (`~/.jukemir/cache/datasets` by default).

### (Step 2) Processing the datasets

Once the raw assets have been downloaded, **run [`./2_process.sh`](reproduce/2_process.sh)** to process them into a standard format (parses all metadata and decodes MP3s to 16-bit PCM WAV files). Note that this script will also take several hours to run and will produce about 50GB of WAV files.

The resultant files will be saved to the `processed` subdirectory of your cache directory (`~/.jukemir/cache/processed` by default).

### (Step 3) Extracting representations

Next, we need to extract representations for each WAV file in the processed datasets. Note that this process is resource-intensive (especially for certain representations). Alternatively, you can [download pre-computed representations](#download-precomputed).

Each representation from our paper (`chroma`, `mfcc`, `choi`, `musicnn`, `clmr`, `jukebox`) has been packaged into a pre-built Docker container with a common API. The basic "type signature" of each container takes a folder of WAV files as input and returns a folder of Numpy arrays containing the corresponding representations. For example, if you have a folder in your current working directory called `mywavs/`, you can extract representations from Jukebox via the following command, which will create a folder of Numpy arrays called `mywavs_jukebox/`:

```sh
docker run \
	-it \
	--rm \
	-v $(pwd)/mywavs:/input \
	-v $(pwd)/mywavs_jukebox:/output \
	jukemir/representations_jukebox
```

Note that each container also takes two optional arguments as input, `--batch_size` and `--batch_idx`, which can be used to compute representations for a subset (batch) of the input WAV file directory. This is useful for parallelizing computation across several workers.

Because `choi` uses batchnorm during inference, its representations will differ if `--batch_size` is changed from its default value of `256` (not recommended). All other representations are invariant to batch size. Note that `musicnn`, `clmr`, and `jukebox` should be run on a machine with a GPU.

A Python script at [`reproduce/3_extract.py`](reproduce/3_extract.py) will generate all of the Docker commands needed to re-extract all representations for all datasets (see [`reproduce/3_extract.sh`](reproduce/3_extract.sh) for output). We highly recommend executing these commands in parallel in your own computing environment, as running them one at a time will take a long time.

### (Steps 4/5) Configuring and running probing experiments

Individual probing experiments are defined using a `jukemir.probe.ProbeExperimentConfig` and executed via `jukemir.probe.execute_probe_experiment`. For example, assuming you've followed the previous steps, you can train a linear probe on `gtzan_ff` using features from `jukebox` via the following script:

```py
from jukemir.probe import ProbeExperimentConfig, execute_probe_experiment

cfg = ProbeExperimentConfig(dataset="gtzan_ff", representation="jukebox")
execute_probe_experiment(cfg)
```

To generate config files for the grid searches described in our paper, **run `./4_grid_config.sh`**. The resultant files will be saved to the `probes` subdirectory of your cache directory (`~/.jukemir/cache/probes` by default).

To run all probing experiments one after another, **run `./5_grid_train_serial.sh`**. This will take several days to run to completion. The resultant files will be saved to the `probes` subdirectory of your cache directory (`~/.jukemir/cache/probes` by default).

We highly recommend parallelizing this computation in your own environment. For example, you can run this computation in parallel on the [Codalab platform](https://worksheets.codalab.org/worksheets/0x7c5afa6f88bd4ff29fec75035332a583) by `pip`-installing the [`codalab`](https://pypi.org/project/codalab/) and **running `./5_grid_train_codalab.sh`**.

### (Step 6) Evaluating test performance

Once all the probes are done training, **run `./6_evaluate.sh`** to find the runs with the best validation scores for each dataset/representation and compute test performance.

## Citation

If you use this codebase in your work, please consider citing our paper:

```
@inproceedings{castellon2021calm,
  title={Codified audio language modeling learns useful representations for music information retrieval},
  author={Castellon, Rodrigo and Donahue, Chris and Liang, Percy},
  booktitle={ISMIR},
  year={2021}
}
```
