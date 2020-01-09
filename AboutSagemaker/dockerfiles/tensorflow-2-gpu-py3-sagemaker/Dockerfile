FROM tensorflow/tensorflow:2.0.0-gpu-py3

COPY ./requirements.txt ~/
WORKDIR ~/

RUN apt-get update \
    && apt-get -y install --no-install-recommends git openssh-client gcc curl nginx-light vim \
    && mkdir -p -m 0600 ~/.ssh \
    && mkdir -p -m 0600 ~/.aws \
    && ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts \
    && pip install --upgrade pip \
    && pip install -r requirements.txt

# Copies the training code inside the container
COPY train.py /opt/ml/code/train.py

# Defines train.py as script entry point
ENV SAGEMAKER_PROGRAM train.py
