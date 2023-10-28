#!/bin/bash

gpg --full-generate-key
KEYID_LONG_FORM=`gpg --list-secret-keys --keyid-format=long | grep 'sec  ' | awk '{print $2}' | cut -d/ -f 2`
gpg --armor --export $KEYID_LONG_FORM # output in base64 form
