#!/bin/bash

packages=( jq yq )
for package in "${packages[@]}"
do
  command -v $package > /dev/null
  if [ $? -ne 0 ]; then
    echo "$package could not be found; installing..."
    sudo apt-get install -y $package
    if [ $? -eq 100 ]; then
      sudo snap install $package
    fi
  fi
done

