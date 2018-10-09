# The base image is python 2.7
FROM python:2.7

# Author: Roy Evangelista
MAINTAINER Roy Evangelista <royevangelista@gmail.com>

# Install required packages

RUN apt-get update && apt-get -y install unzip

# Install ansible
RUN pip install ansible flake8

# Copied from base image
CMD ["python"]
