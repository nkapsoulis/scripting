#!/bin/bash

INTERFACE="wlo1"
echo -n 'For interface '$INTERFACE': '
ifconfig $INTERFACE | grep ether | awk '{print $2}'