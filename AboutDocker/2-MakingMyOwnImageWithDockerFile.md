## Dockerfile
Saving docker image itself is not expandable way. So, using Dockerfile to create an image whenever you want to will be to solution to the problem.

First, create a folder
`(mkdir ~/dockerfiles)
`(touch ~/dockerfiles/Dockerfile)

```
docker build -f Dockerfile -t <imgname>:<tag>
```
