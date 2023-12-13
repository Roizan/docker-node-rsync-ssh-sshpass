FROM node:alpine

# Install rsync and openssh-client
RUN apk --update --no-cache add rsync openssh-client sshpass git
