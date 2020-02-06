## Setting

First, configure the file `~/.config/flintrock/config.yaml`
If you want to use S3 file system, also set install-hdfs true.

```
services:
  spark:
    version: 2.4.4
    # git-commit: latest  # if not 'latest', provide a full commit SHA; e.g. d6dc12ef0146ae409834c78737c116050961f350
    # git-repository:  # optional; defaults to https://github.com/apache/spark
    # optional; defaults to download from from the official Spark S3 bucket
    #   - must contain a {v} template corresponding to the version
    #   - Spark must be pre-built
    #   - must be a tar.gz file
    # download-source: "https://www.example.com/files/spark/{v}/spark-{v}.tar.gz"
    # executor-instances: 1
  hdfs:
    version: 2.8.5
    # optional; defaults to download from a dynamically selected Apache mirror
    #   - must contain a {v} template corresponding to the version
    #   - must be a .tar.gz file
    # download-source: "https://www.example.com/files/hadoop/{v}/hadoop-{v}.tar.gz"
    # download-source: "http://www-us.apache.org/dist/hadoop/common/hadoop-{v}/hadoop-{v}.tar.gz"

provider: ec2

providers:
  ec2:
    key-name: piljae-dev
    identity-file: /home/ubuntu/.ssh/piljae-dev.pem
    instance-type: m5.large
    region: ap-northeast-1
    availability-zone: ap-northeast-1c
    ami: ami-06cd52961ce9f0d85  # Amazon Linux 2, us-east-1
    user: ec2-user
    # ami: ami-61bbf104  # CentOS 7, us-east-1
    # user: centos
    # spot-price: <price>
    vpc-id: vpc-91e27af6
    subnet-id: subnet-cb482f90
    # placement-group: <name>
    security-groups:
      - launch-wizard-1
    # instance-profile-name:
    # tags:
    #   - Name, SparkInstance
    #   - key2, value2  # leading/trailing spaces are trimmed
    #   - key3,  # value will be empty
    # min-root-ebs-size-gb: <size-gb>
    tenancy: default  # default | dedicated
    ebs-optimized: no  # yes | no
    instance-initiated-shutdown-behavior: terminate  # terminate | stop
    # user-data: /path/to/userdata/script

launch:
  num-slaves: 4
  # install-hdfs: True
  # install-spark: False

debug: false
```
