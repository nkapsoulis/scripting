#!/bin/bash

SCRIPT=${1:-"test.sh"}
BINARY_OUTPUT=${2:-"binary"}
IMAGE_TAG='test-shc:latest'
CONTAINER_NAME=shc_test

docker build -f shc.Dockerfile -t ${IMAGE_TAG} --build-arg BINARY_OUTPUT=${BINARY_OUTPUT} --build-arg SCRIPT=${SCRIPT} .

if [[ $? -eq 0 ]]; then
  docker rm -f ${CONTAINER_NAME} > /dev/null 2>&1
  docker run --rm -di --name ${CONTAINER_NAME} ${IMAGE_TAG}
  docker cp ${CONTAINER_NAME}:/${BINARY_OUTPUT} .
  # pwd
  # ./${BINARY_OUTPUT}
  docker rm -f ${CONTAINER_NAME} > /dev/null 2>&1
fi

