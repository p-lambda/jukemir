# Import Ubuntu/CUDA/cuDNN
FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

# Configure basic environment
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update --fix-missing
RUN apt-get install -y --no-install-recommends build-essential
SHELL ["/bin/bash", "-c"]

# Install FFmpeg
RUN apt-get install -y --no-install-recommends software-properties-common; add-apt-repository ppa:jonathonf/ffmpeg-4; apt-get update; apt-get install -y --no-install-recommends ffmpeg

# Install Python
ENV LANG C.UTF-8
RUN apt-get install -y --no-install-recommends python3 python3-dev
RUN ln -s $(which python3) /usr/local/bin/python

# Install pip
RUN apt-get install -y python3-pip
RUN python -m pip install --no-cache-dir --upgrade "pip<20.3" setuptools

# Install learning frameworks
RUN python -m pip install --no-cache-dir torch==1.8.0+cu101 -f https://nelsonliu.me/files/pytorch/whl/torch_stable.html
RUN python -m pip install --no-cache-dir scikit-learn==0.24.1

# Install Jupyter
RUN python -m pip install --no-cache-dir jupyter matplotlib

# Install other Python deps
RUN python -m pip install --no-cache-dir librosa
RUN python -m pip install --no-cache-dir tqdm
RUN apt-get install -y --no-install-recommends fluidsynth; python -m pip install --no-cache-dir pyfluidsynth
RUN python -m pip install --no-cache-dir pretty_midi
RUN python -m pip install --no-cache-dir mir_eval
RUN python -m pip install --no-cache-dir wandb

# Create workdir and cache
ARG WORKDIR=/jukemir
RUN mkdir -p $WORKDIR
WORKDIR $WORKDIR
RUN mkdir cache
ENV JUKEMIR_CACHE_DIR $WORKDIR/cache

# Install library placeholder
COPY setup.py setup.py
RUN mkdir jukemir
RUN python -m pip install --no-cache-dir -e .

# Create additional folders
RUN mkdir notebooks
RUN mkdir scripts
RUN mkdir tests

# Create user
RUN useradd -ms /bin/bash jukemir
RUN chmod -R ugo+rw $WORKDIR
RUN chown -R jukemir $WORKDIR
USER jukemir
