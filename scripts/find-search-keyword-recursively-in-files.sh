#!/bin/bash

grep -rl 'apt-get' .

# Find one or the other.
grep -rl 'apt-get\|install' . 
