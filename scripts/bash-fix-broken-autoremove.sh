#!/bin/bash

sudo apt --fix-broken install
sudo dpkg --configure -a && sudo apt-get -f install && sudo apt-get autoremove