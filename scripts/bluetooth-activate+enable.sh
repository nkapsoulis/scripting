#!/bin/bash

sudo modprobe ath3k
sudo modprobe btusb

sudo service bluetooth start
systemctl status bluetooth
sudo service bluetooth restart