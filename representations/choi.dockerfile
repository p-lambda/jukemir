# Import Ubuntu/CUDA/cuDNN
FROM nvidia/cuda:8.0-cudnn5-devel-ubuntu14.04

# Configure basic environment
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y || true
RUN apt-get install -y \
	build-essential \
	git \
	software-properties-common \
	libssl-dev \
	unzip
SHELL ["/bin/bash", "-c"]

# Install Python
ENV LANG C.UTF-8
RUN apt-get install -y python python-dev python-tk python-pip
#RUN add-apt-repository ppa:deadsnakes/ppa
#RUN apt-get update -y || true
#RUN apt-get install python3.6 -y \
#    python3.6-dev
#RUN ln -s $(which python3.6) /usr/local/bin/python

# Install pip
RUN python -m pip install --upgrade pip==9.0.1
RUN python -m pip install --upgrade setuptools==34.3.3
#RUN apt-get install -y curl; curl https://bootstrap.pypa.io/get-pip.py | python
#RUN python -m pip install --upgrade "pip<20.3" setuptools

# Install requirements for (Choi et al. 2017)
RUN python -m pip install --no-cache-dir theano==0.9
RUN python -m pip install --no-cache-dir keras==1.2.2
RUN mkdir -p /root/.keras
RUN echo "{\"image_dim_ordering\": \"th\", \"epsilon\": 1e-07, \"floatx\": \"float32\", \"backend\": \"theano\"}" > /root/.keras/keras.json
RUN python -m pip install --no-cache-dir cython==0.25.2
RUN python -m pip install --no-cache-dir joblib==0.11 --force-reinstall
RUN python -m pip install --no-cache-dir librosa==0.4
RUN python -m pip install --no-cache-dir pandas==0.19.2
RUN python -m pip install --no-cache-dir h5py==2.6.0

# Install code for (Choi et al. 2017)
RUN mkdir /input
RUN mkdir /output
RUN mkdir /code
WORKDIR /code
RUN git clone https://github.com/keunwoochoi/kapre.git
RUN cd kapre; git reset --hard a3bde3e; python setup.py install
RUN git clone https://github.com/keunwoochoi/transfer_learning_music.git
WORKDIR /code/transfer_learning_music
RUN git reset --hard e1f83c3
RUN mkdir input
RUN mkdir output
COPY choi/main.py main.py

# Test
ENV PATH /usr/local/cuda/bin:$PATH
ENV LD_LIBRARY_PATH /usr/local/cuda/lib64:$LD_LIBRARY_PATH
ENV CUDA_HOME /usr/local/cuda
ENV THEANO_FLAGS floatX=float32,device=cpu,openmp=False
ENTRYPOINT ["python", "main.py"]
