#!bin/bash

sudo dpkg --remove <name>
sudo dpkg -i /path/to/deb/file | sudo apt-get install -f