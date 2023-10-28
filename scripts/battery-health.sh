#!/bin/bash

upower -i /org/freedesktop/UPower/devices/`upower -e | grep battery | sed 's:.*/::'`
