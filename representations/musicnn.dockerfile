# Import Ubuntu/CUDA/cuDNN
FROM tensorflow/tensorflow:1.14.0-gpu-py3

RUN apt-get install -y \
	libsndfile1-dev \
	wget
RUN python -m pip install --no-cache-dir librosa==0.7.0
RUN python -m pip install --no-cache-dir --force-reinstall numba==0.48
RUN python -m pip install --no-cache-dir tqdm

RUN mkdir /input
RUN mkdir /output
RUN mkdir /code
WORKDIR /code
RUN wget https://github.com/jordipons/musicnn/archive/516acb2a0ff5ef73f64547898e018e793152c506.zip
RUN unzip 516acb2a0ff5ef73f64547898e018e793152c506.zip
RUN python -m pip install --no-dependencies -e musicnn-516acb2a0ff5ef73f64547898e018e793152c506
COPY musicnn/main.py main.py

ENTRYPOINT ["python", "main.py"]
