# Claymore For Docker

Docker container with Claymore Dual Ethereum GPU Miner.

Due to Docker limitations this will only work on NVIDIA GPUs, using specific NVIDIA base Docker image.

You must load your own "config.txt" when running this container.

Run command example: 

`sudo docker run --rm -it --gpus '"device=0,1,2,3"' jpleorx:/docker-claymore:latest -v /my-claymore-config:/claymore-config`