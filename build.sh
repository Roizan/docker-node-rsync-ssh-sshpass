#!/bin/bash

echo "Starting Docker buildx instance for multiplatform build"
docker buildx create --use

echo "Building Containers"
docker buildx build --platform linux/amd64,linux/arm64 -t bernhardmeder/docker-node-rsync-ssh-sshpass:node14-latest -f Dockerfile14 --push . 
docker buildx build --platform linux/amd64,linux/arm64 -t bernhardmeder/docker-node-rsync-ssh-sshpass:node16-latest -f Dockerfile16 --push . 
docker buildx build --platform linux/amd64,linux/arm64 -t bernhardmeder/docker-node-rsync-ssh-sshpass:node17-latest -f Dockerfile17 --push . 
docker buildx build --platform linux/amd64,linux/arm64 -t bernhardmeder/docker-node-rsync-ssh-sshpass:latest --push . 
