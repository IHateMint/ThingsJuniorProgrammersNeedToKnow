# Docker Basic
---

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
docker start bionic-test
```
To go inside the container,
```
docker attach bionic-test
```
If you enter `exit` command inside the container, the container stops, and needs to be restarted.
```
docker restart bionic-test
```