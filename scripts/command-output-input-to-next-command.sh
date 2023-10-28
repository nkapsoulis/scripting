#!/bin/bash

ls -la | grep total | awk '{print $2}' | xargs echo Number of blocks: 

