# The base image is python 3 alpine
FROM royge/ansible:latest

# Install ansible
RUN pip install ansible==2.3.2.0

# Copied from base image
CMD ["ansible", "--version"]
