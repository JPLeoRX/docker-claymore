#Claymore For Docker
Run example: 

sudo docker run --rm -it --gpus '"device=0,1,2,3"' jpleorx:/docker-claymore:latest -v /claymore-config:/claymore-config