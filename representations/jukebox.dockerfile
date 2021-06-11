# Import Ubuntu/CUDA/cuDNN
FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

# Configure shell
ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-c"]
RUN apt-get update --fix-missing

# Install Python
ENV LANG C.UTF-8
RUN apt-get install -y python3 python3-dev python3-pip
RUN ln -s $(which python3) /usr/local/bin/python
RUN python -m pip install --no-cache-dir --upgrade pip setuptools

# Install deps
RUN apt-get install -y wget unzip
RUN mkdir -p /root/.cache/jukebox/models/5b
RUN wget https://openaipublic.azureedge.net/jukebox/models/5b/vqvae.pth.tar; mv vqvae.pth.tar /root/.cache/jukebox/models/
RUN wget https://openaipublic.azureedge.net/jukebox/models/5b/prior_level_2.pth.tar; mv prior_level_2.pth.tar /root/.cache/jukebox/models/
RUN apt-get install -y libsndfile1-dev
RUN apt-get install -y libopenmpi-dev
RUN apt-get install -y openssh-server
RUN python -m pip install --no-cache-dir torch==1.4.0

# Setup entrypoint
RUN mkdir /input
RUN mkdir /output
RUN mkdir /code
WORKDIR /code
ARG COMMIT_ID=08efbbc1d4ed1a3cef96e08a931944c8b4d63bb3
RUN wget https://github.com/openai/jukebox/archive/${COMMIT_ID}.zip; unzip ${COMMIT_ID}.zip; rm ${COMMIT_ID}.zip; mv jukebox-${COMMIT_ID} jukebox
RUN python -m pip install --no-cache-dir -e jukebox
COPY jukebox/make_models.py.patch make_models.py.patch
RUN patch jukebox/jukebox/make_models.py make_models.py.patch
COPY jukebox/main.py main.py
ENTRYPOINT ["python", "main.py"]
