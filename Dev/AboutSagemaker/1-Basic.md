## Setup
First, on a host install `docker`, `docker-compose`.
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

```
docker-compose --version
```
Build an image on the host.

## Checking on Local
Image-name should be the image on the host.

```
from sagemaker.estimator import Estimator

estimator = Estimator(image_name=<image-name>, role='SageMakerRole', train_instance_count=1, train_instance_type='local')
estimator.fit()
```
Run the code above on a host (outside the container)

---
https://pypi.org/project/sagemaker-containers/
