#!/bin/bash

GO_DOWNLOAD= # Complete from https://go.dev/dl/

wget https://golang.org/dl/"$GO_DOWNLOAD" -O $HOME/$GO_DOWNLOAD
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf $HOME/$GO_DOWNLOAD
export PATH=$PATH:/usr/local/go/bin
go version
rm $HOME/$GO_DOWNLOAD
