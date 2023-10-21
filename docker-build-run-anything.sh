#!/bin/bash

IMAGE=jenkins/jenkins:lts
CONTAINER=jenkins-local

docker run --rm --name $CONTAINER --network host -di -t $IMAGE
# OR docker run --rm --name $CONTAINER --network host -di -t $IMAGE /bin/bash
