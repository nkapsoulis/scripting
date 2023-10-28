#!/bin/bash

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install sublime-text -y
./make-sublime-default-text-editor.sh

# Tweaks
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt autoremove -y
sudo apt install gnome-tweaks -y # Keyboard & Mouse > Additional Layout Options > Switch to another layout
sudo apt-get install -y gnome-shell-extension-system-monitor # Extensions > System-monitor 

# Wget, git
sudo apt-get install wget git -y

# Google Chrome & Metamask, Adblock Plus Extensions
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo ./install-chrome-extension-examples.sh
# Update Google Chrome
sudo apt-get --only-upgrade install google-chrome-stable

# Skype, Slack, Webstorm, Discord, Kdenlive, VLC, Wine
sudo snap install skype --classic
sudo snap install slack --classic
sudo snap install webstorm --classic
sudo snap install discord --classic
sudo snap install kdenlive --classic
sudo snap install vlc
sudo apt-get install wine64 -y

# MasterPDF Editor, *.epub-reader
wget https://code-industry.net/public/master-pdf-editor-5.8.49-qt5.x86_64.deb
sudo dpkg -i https://code-industry.net/public/master-pdf-editor-5.8.49-qt5.x86_64.deb
sudo apt-get install -y fbreader # For reading *.epub

# Docker & W/o sudo
# `dpkg --print-architecture`==amd64
wget https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-ce-cli_20.10.9~3-0~ubuntu-focal_amd64.deb https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-ce_20.10.9~3-0~ubuntu-focal_amd64.deb https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/containerd.io_1.5.11-1_amd64.deb
sudo dpkg -i docker-ce-cli_20.10.9~3-0~ubuntu-focal_amd64.deb docker-ce_20.10.9~3-0~ubuntu-focal_amd64.deb containerd.io_1.5.11-1_amd64.deb
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 

# SimpleScreenRecorder
sudo apt-add-repository -y ppa:maarten-baert/simplescreenrecorder
sudo apt-get update
sudo apt-get install -y simplescreenrecorder

# Kazam
sudo add-apt-repository -y ppa:sylvain-pineau/kazam
sudo apt-get update
sudo apt-get install -y kazam
sudo apt-get install -y python3-xlib python3-cairo
kazam --version

# Open Broadcaster Software Studio
sudo add-apt-repository -y ppa:obsproject/obs-studio
sudo apt-get update
sudo apt install -y obs-studio
sudo apt install imagemagick-6.q16 imagemagick-6.q16hdri graphicsmagick-imagemagick-compat # to use 'convert IMG_12309.jpg IMG_34309.jpg test.pdf' -> high size. Use Bash_Scripting/pdf-guide-reduce-size-multiple-photos-images.sh

# GO 1.18
GO_DOWNLOAD=go1.18.linux-amd64.tar.gz
sudo wget https://golang.org/dl/"$GO_DOWNLOAD" -O /usr/local/$GO_DOWNLOAD && sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf $GO_DOWNLOAD && sudo rm $GO_DOWNLOAD 
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
go version

# Viber
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb

# jq
sudo apt install jq -y

# NVM
sudo apt update
wget -q0- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
nvm --version
nvm ls-remote
nvm install v16.17.1
npm install -g npm@8.19.2

# route, ifconfig
sudo apt install net-tools
sudo apt install ethtool

# Unrar
sudo apt install unrar

# anydesk
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install anydesk

# YouTube downloader
sudo snap install youtube-dl-pro
