# Import Ubuntu/CUDA/cuDNN
FROM ubuntu:20.04

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
RUN apt-get install -y libsndfile1-dev
RUN python -m pip install --no-cache-dir librosa==0.8.1

# Setup entrypoint
RUN mkdir /input
RUN mkdir /output
RUN mkdir /code
WORKDIR /code
ARG COMMIT_ID=8939105bf2aea51f2267db99ef66e94db676dbe7
RUN wget https://github.com/Spijkervet/CLMR/archive/${COMMIT_ID}.zip; unzip ${COMMIT_ID}.zip; rm ${COMMIT_ID}.zip; mv CLMR-${COMMIT_ID} clmr
RUN python -m pip install --no-cache-dir -e clmr
RUN wget https://github.com/Spijkervet/CLMR/releases/download/2.1/clmr_magnatagatune_mlp.zip; unzip clmr_magnatagatune_mlp.zip; rm clmr_magnatagatune_mlp.zip
COPY clmr/main.py main.py
ENTRYPOINT ["python", "main.py"]
