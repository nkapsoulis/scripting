#!/bin/bash

DIR=/opt/google/chrome/extensions

[ -d "$DIR" ] && echo "Directory $DIR exists." || echo "Error: Directory $DIR does not exist."
