## Integrating docker with AWS
Using docker in AWS is also possible, by using ECR.
Pushing image to ECR and pulling the image is quite simple.
First, we need awscli to use ECR.
```
apt-get install awscli
```

```
aws ecr describe-images --repository-name <repository_name>
```

To pull image from ECR,
```
docker pull <aws_account_id>.dkr.ecr.<region>.amazonaws.com/<imagename>:<tagname>
```
