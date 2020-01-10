# Docker Basic
---
## Basic Concept
Below docker containers, there is a host os, and each container runs on the host os. Inside the containers, os image isn't fully packaged. Kernel uses the host os itself, but packages only the difference between the specified guest os and the host os. Executing a command inside the container is actually the host os operation. Thus, the process space is shared with the host os.
cf. VM(Virtual Machine) runs on top of Hypervisor (Guest Machine)

## Docker Lifecycle


## Install for linux
```
curl -fsSL https://get.docker.com/ | sudo sh
```
## Use without sudo
```
sudo usermod -aG docker $USER
sudo usermod -aG docker other-user
```
Other users can only use without sudo when they are added to `docker` group.

## Check Version
```
docker version
```
Sometimes, specific version is needed. For example to use Tensorflow Docker.

## Docker Commands
First, we need a base image to build. So, download an image from dockerhub.
Download is done by `pull` command. One who have used `Git` would be familiar with this command.
```
docker pull ubuntu          # Without tag, uses default tag.
docker pull ubuntu:bionic   # Can specify the version, in this case 18.04. To use older ubuntu, try such as xenial.
```
To list the docker images you have,
```
docker image ls
```
Now, running a container with the image you have is possible.
If specifed an image you don't have, searchs it in the dockerhub.
```
docker run [options] IMAGE[:tag] [command]
docker run -dti --name bionic-test ubuntu:bionic     # Using ubuntu:bionic image, created a container named bionic-test.
                                                     # `-dti` is combination of `d,t,i` options -> Respectively detach, pseudo-TTY, interactive.
```
`run` command only creates a container, and we need to start the created container. 
```
docker start <container-id>
```
To go inside the container,
```
docker attach <container-name>
```
If you enter `exit` command inside the container, the container stops, and needs to be restarted.
```
docker restart <container-id>

Both `container-id` and `container-name` are fine for above commands, but I've found out that starting and restarting with `container-name` have some bugs, and may not start the container ordinarily. So, in my exeperience, I recommend using `container-id`.
```

---
There is a great explanation on container detachment.
https://stackoverflow.com/questions/25267372/correct-way-to-detach-from-a-container-without-stopping-it
