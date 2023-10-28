#!/bin/bash

echo "Are you sure?"
select yn in "Yes" "No"; do
    case $yn in
        "Yes" ) break;;
        "No" ) exit;;
    esac
    echo "1 for 'Yes', 2 for 'No'"    
done

echo "You entered yes!"


# Another one
while true; do
    read -p "Do you wish to install this program? " yn
    case $yn in
        [Yy]* ) printf "Installing...\nInstallation completed.\n"; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done