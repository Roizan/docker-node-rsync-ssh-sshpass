#!/bin/bash

echo "Building Containers"
docker build -t docker-node-rsync-ssh-sshpass14 - < Dockerfile14
docker build -t docker-node-rsync-ssh-sshpass16 - < Dockerfile16
docker build -t docker-node-rsync-ssh-sshpass17 - < Dockerfile

echo "Tagging Containers"
docker tag docker-node-rsync-ssh-sshpass14:latest bernhardmeder/docker-node-rsync-ssh-sshpass:node14-latest
docker tag docker-node-rsync-ssh-sshpass16:latest bernhardmeder/docker-node-rsync-ssh-sshpass:node16-latest
docker tag docker-node-rsync-ssh-sshpass17:latest bernhardmeder/docker-node-rsync-ssh-sshpass:node17-latest

echo "Pushing to Dockerhub"
docker push bernhardmeder/docker-node-rsync-ssh-sshpass:node14-latest
docker push bernhardmeder/docker-node-rsync-ssh-sshpass:node16-latest
docker push bernhardmeder/docker-node-rsync-ssh-sshpass:node17-latest
