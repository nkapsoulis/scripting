#!/bin/bash

echo "Linux: Bash" | cut -f1 -d":"
echo "Linux: Bash" | cut -f2 -d":"
echo $PWD | rev | cut  -d"/" -f1 | rev
