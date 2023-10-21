#!/bin/bash

docker kill $(docker ps -q)
docker rm $(docker ps -aq)
docker images -f dangling=true
# Remove docker images
# docker rmi $(docker images dev-* -q)