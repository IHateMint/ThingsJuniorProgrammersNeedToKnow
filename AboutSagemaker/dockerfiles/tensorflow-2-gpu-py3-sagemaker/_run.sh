docker build -f Dockerfile -t tf2-gpu-py3-sagemaker:v1 .
docker tag c1b0e901e1eb 340519826608.dkr.ecr.ap-northeast-1.amazonaws.com/deeplearning-images
docker push 340519826608.dkr.ecr.ap-northeast-1.amazonaws.com/deeplearning-images:tensorflow-2-gpu-py3-sagemaker
