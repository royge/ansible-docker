# The base image is python 3 alpine
FROM royge/ansible:latest

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
