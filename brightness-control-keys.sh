#!/bin/bash

echo "!!!UNVERIFIED!!!"
# sudo add-apt-repository ppa:apandada1/brightness-controller -y
# sudo apt update -y
# sudo apt install brightness-controller -y

# sudo sed -i 's/quiet splash/quiet splash intel_backlight=vendor/g' /etc/default/grub
# sudo update-grub
# reboot

# ls /sys/class/backlight/
# sudo touch /usr/share/X11/xorg.conf.d/20-intel.conf
# echo 'Section "Device"
#         Identifier  "card0"
#         Driver      "intel"
#         Option      "Backlight"  "intel_backlight"
#         BusID       "PCI:0:2:0"
# EndSection' | sudo tee /usr/share/X11/xorg.conf.d/20-intel.conf
# gnome-session-quit --no-prompt
