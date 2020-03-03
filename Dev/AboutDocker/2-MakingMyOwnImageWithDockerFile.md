## Dockerfile
Saving docker image itself is not expandable way. So, using Dockerfile to create an image whenever you want to will be to solution to the problem.

First, create a folder and make Dockerfile inside the folder.
```
mkdir ~/dockerfiles
touch ~/dockerfiles/Dockerfile
```

Now, edit the Dockerfile using vim, or whatever editor you'd like to use.

## Dockerfile Commands
Below are the basic Dockerfile commands that is useful, though there are many other commands.
`CMD` instruction should be one and only inside the Dockerfile, and if it omits the executable, `ENTRYPOINT` should be specified.
```
FROM <image>          # Creates layer from docker image specified
COPY <src> <dest>     # Adds files from docker client's dir
RUN  <command>        # shell commands - The default is /bin/sh -c in Linux
CMD  ["<executable>", "<param1>", "<param2>"]   # Specifies the command to execute within the container
ENV <key> <value>     # Sets environment variable
USER <username | uid> # Sets user name or userid to use when running the image
WORKDIR <path>        # Sets working dir for instructions that follows the command
```
Refer to the Dockerfile in `AboutDocker` directory, for more detailed examples.

## Building an Image
With the Dockerfile, you can now build a Docker image, by `build` command.
```
docker build -f Dockerfile -t <imgname>:<tag>
```
Now, you can check whether an image was created properly, by entering `docker images`

Version controls are possible by specifying tag at the end. Dockerfile is much better way to create an image, than just saving the image itself, because any minor changes can be rapidly dealt with.

Below are the basic Dockerfile commands that is useful, though there are many other command

## Pushing to Dockerhub
```
docker commit -a "commit message" <container_id> <imagename>
docker tag <imagename> <userid>/<imagename_on_hub>:<tag>
```
