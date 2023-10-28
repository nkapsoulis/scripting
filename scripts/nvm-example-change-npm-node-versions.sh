#!/bin/bash

sudo apt update
wget -q0- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
nvm --version
nvm ls-remote
nvm install v16.17.1

