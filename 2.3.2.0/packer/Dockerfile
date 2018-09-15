# The base image is python 3 alpine
FROM python:3-alpine

# Author: Roy Evangelista
MAINTAINER Roy Evangelista <royevangelista@gmail.com>

RUN apk add --no-network --no-cache --repositories-file /dev/null "apk-tools>2.10.1"

# Install new packages
RUN apk add --update build-base python-dev py-pip jpeg-dev zlib-dev libffi-dev openssl-dev git openssh-client
RUN apk update \
  && apk add ca-certificates wget \
  && update-ca-certificates

# Change LIBRARY_PATH environment variable because of error in building zlib
ENV LIBRARY_PATH=/lib:/usr/lib

# Install ansible
RUN pip install ansible==2.3.2.0

# Download packer
RUN wget --no-check-certificate https://releases.hashicorp.com/packer/1.1.3/packer_1.1.3_linux_amd64.zip

# Extract packer
RUN unzip packer_1.1.3_linux_amd64.zip

# Move packer binary to /usr/bin
RUN mv packer /usr/bin/

# Clean up
RUN rm packer_1.1.3_linux_amd64.zip

# Copied from base image
CMD ["ansible", "--version"]
