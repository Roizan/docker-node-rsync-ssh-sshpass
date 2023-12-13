# Low Profile Docker Container for deployment via e.g. gitlab CI/CD, vuepress, mkdocs
## containing node-rsync-ssh-sshpass-git

## Purpose
Based on a low profile Alpine Linux with nodejs - added git, rsync, ssh and sshpass for fast deployments of static content like mkdocs or vuepress.

### Used docker image
* node: https://hub.docker.com/_/node/

### Added via apk
* git 
* rsync
* ssh
* sshpass

## Build and upload to dockerhub

### Login to dockerhub

```docker login```

### Build with build.sh

> if you are forking this repository, please change repository remote to push to your own repo ;) 

```./build.sh```

### Currently built versions

* node14
* node16
* node17
* node:latest (currently 21)
