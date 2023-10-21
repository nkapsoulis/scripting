#!/bin/bash

docker info
docker search ubuntu
docker pull ubuntu
docker images
docker run -it ubuntu
docker rm $(docker ps -aq)
# Open in DIFFERENT terminal
docker exec -it $(docker ps -qa --filter "ancestor=ubuntu") bash
# Open in SAME terminal 
docker attach $(docker ps -qa --filter "ancestor=ubuntu")
