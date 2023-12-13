#!/bin/bash

echo "Starting Docker buildx instance for multiplatform build"
docker buildx create --use

echo "Building Containers"
docker buildx build --platform linux/amd64,linux/arm64 -t docker-node-rsync-ssh-sshpass14 - < Dockerfile14
docker buildx build --platform linux/amd64,linux/arm64 -t docker-node-rsync-ssh-sshpass16 - < Dockerfile16
docker buildx build --platform linux/amd64,linux/arm64 -t docker-node-rsync-ssh-sshpass17 - < Dockerfile17
docker buildx build --platform linux/amd64,linux/arm64 -t docker-node-rsync-ssh-sshpass-latest - < Dockerfile

echo "Tagging Containers"
docker tag docker-node-rsync-ssh-sshpass14:latest bernhardmeder/docker-node-rsync-ssh-sshpass:node14-latest
docker tag docker-node-rsync-ssh-sshpass16:latest bernhardmeder/docker-node-rsync-ssh-sshpass:node16-latest
docker tag docker-node-rsync-ssh-sshpass17:latest bernhardmeder/docker-node-rsync-ssh-sshpass:node17-latest
docker tag docker-node-rsync-ssh-sshpass:latest bernhardmeder/docker-node-rsync-ssh-sshpass:latest

echo "Pushing to Dockerhub"
docker push bernhardmeder/docker-node-rsync-ssh-sshpass:node14-latest
docker push bernhardmeder/docker-node-rsync-ssh-sshpass:node16-latest
docker push bernhardmeder/docker-node-rsync-ssh-sshpass:node17-latest
docker push bernhardmeder/docker-node-rsync-ssh-sshpass:latest
