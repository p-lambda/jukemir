# Import Ubuntu/CUDA/cuDNN
FROM ubuntu:20.04

# Create IO dirs
RUN mkdir /input
RUN mkdir /output

# Configure shell
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update --fix-missing
SHELL ["/bin/bash", "-c"]

# Install Python
ENV LANG C.UTF-8
RUN apt-get install -y python3 python3-dev python3-pip
RUN ln -s $(which python3) /usr/local/bin/python
RUN python -m pip install --no-cache-dir --upgrade pip setuptools

# Install deps
RUN apt-get install -y libsndfile1-dev
RUN python -m pip install --no-cache-dir librosa==0.8.1
RUN python -m pip install --no-cache-dir scipy==1.6.3
RUN python -m pip install --no-cache-dir tqdm==4.61.0

# Setup entrypoint
WORKDIR /code
COPY handcrafted/main.py main.py
ENTRYPOINT ["python", "main.py", "chroma"]
