#!/bin/bash

echo "Listing the biggest 10 in size subdirs of current dir: '.'"
du -a . | sort -n -r | head -n 10
