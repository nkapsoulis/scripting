#!/bin/bash

sudo lshw -short -C memory
sudo dmidecode --type 17 | grep -i speed
