# This is an example of a dockerfile in order to use tensorflow-gpu.

FROM tensorflow/tensorflow:2.0.0-gpu-py3
COPY . /app
WORKDIR /app

RUN apt-get update \
    && apt-get -y install --no-install-recommends git openssh-client gcc curl nginx-light vim \
    && mkdir -p -m 0600 ~/.ssh \
    && mkdir -p -m 0600 ~/.aws \
    && ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts \
    && pip install --upgrade pip \
    && pip install -r requirements.txt \
    && touch ~/.aws/config \
    && touch ~/.aws/credentials \
    && echo 'export [default]' >> ~/.aws/config \
    && echo 'export region = ap-northeast-1' >> ~/.aws/config
