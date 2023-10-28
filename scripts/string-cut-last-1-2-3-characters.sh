#!/bin/bash

STR=abcdefg
echo ${STR%?}
echo ${STR%??}
echo ${STR%???}
