#!/bin/bash

sudo apt update > /dev/null 2>&1 # First redirects stdout to /dev/null, then redirects stderr there as well. Effectively silences all output (regular and error).
# 2 refers to the second file descriptor of the process, i.e. stderr. > means redirection. &1 means the target of the redirection should be the same location as the first file descriptor, i.e. stdout.

