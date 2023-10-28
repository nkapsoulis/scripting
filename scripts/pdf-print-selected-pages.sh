#!/bin/bash

# To remove 5th page in document.pdf
pdftk document.pdf cat 1-4 6-end output out.pdf && mv out.pdf document.pdf