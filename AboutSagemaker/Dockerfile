FROM tensorflow/tensorflow:2.0.0-gpu-py3

RUN apt-get update \
		&& apt-get -y install --no-install-recommends git openssh-client gcc curl nginx-light vim \
		&& pip install sagemaker-containers

COPY train.py /opt/ml/code/train.py
ENV SAGEMAKER_PROGRAM train.py
