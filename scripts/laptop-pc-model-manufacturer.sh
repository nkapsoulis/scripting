#!/bin/bash

sudo dmidecode | grep Product | sed -n '1p' | xargs
