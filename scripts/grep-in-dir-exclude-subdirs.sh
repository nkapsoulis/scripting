#!/bin/bash

grep -rl "Date" --exclude-dir=node_modules/ --exclude-dir=.meteor/
