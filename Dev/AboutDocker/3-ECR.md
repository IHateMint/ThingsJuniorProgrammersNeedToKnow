## Integrating docker with AWS
Using docker in AWS is also possible, by using ECR.
Pushing image to ECR and pulling the image is quite simple.
First, we need awscli to use ECR.
```
apt-get install awscli
```

Authenticating Docker to ECR registry is needed,
```
aws ecr get-login --region <region-name> --no-include-email
```
Copy and paste the output exactly on the terminal.

```
aws ecr describe-images --repository-name <repository_name>
```

```
docker tag <ImageID> <aws_account_id>.dkr.ecr.<region>.amazonaws.com/<repository-name>
docker push <aws_account_id>.dkr.ecr.<region>.amazonaws.com/<repository-name>:<tag>
```
If this process doesn't work, it's AWS ECR permission problem, thus edit the permission statements in AWS ECR console.

To pull image from ECR,
```
docker pull <aws_account_id>.dkr.ecr.<region>.amazonaws.com/<repository-name>:<tag>
```

---
I own a ECR repository named deeplearning-images,
```
docker tag 70d69cf1023b 340519826608.dkr.ecr.ap-northeast-1.amazonaws.com/deeplearning-images:tensorflow-2-gpu-py3-sagemaker
docker push 340519826608.dkr.ecr.ap-northeast-1.amazonaws.com/deeplearning-images:tensorflow-2-gpu-py3-sagemaker
docker pull 340519826608.dkr.ecr.ap-northeast-1.amazonaws.com/deeplearning-images:tensorflow-2-gpu-py3-sagemaker
```

