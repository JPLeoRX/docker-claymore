# From base nvidia-cuda
FROM nvidia/cuda:10.0-devel-ubuntu18.04

# Update packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y unzip vim

# Prepare directories
RUN mkdir /claymore
RUN mkdir /claymore/archive
RUN mkdir /claymore-config

# Copy install script
COPY load_config_and_run_miner.sh /
RUN chmod a+x load_config_and_run_miner.sh

# Copy claymore miner
COPY claymore.tar.gz /claymore/claymore.tar.gz
WORKDIR /claymore
RUN tar -xzf claymore.tar.gz -C archive --strip-components=1
RUN mv archive ../
WORKDIR /
RUN rm -rf /claymore
RUN mv /archive /claymore

# Load config from mounted volume and run miner
CMD './load_config_and_run_miner.sh'