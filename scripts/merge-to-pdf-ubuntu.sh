#!/bin/bash

sudo apt-get install imagemagick
convert *.jpg *.png *.bmp 1.pdf
# or
gscan2pdf
# or 
pdfunite