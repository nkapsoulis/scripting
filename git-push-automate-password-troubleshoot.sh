#!/bin/bash

### Automate "git push" without password prompt
git remote set-url origin git+ssh://git@gitlab.com/myAccount/myRepo.git
ssh-keygen -t ed25519 -C "random-email@gmail.com"
eval `ssh-agent -s`
ssh-add ~/.ssh/id_ed25519.pub
echo "##### Paste *.pub to Git website #####"
read -p "Press Enter↵ to continue"
subl .git/config
echo '[core] sshCommand = ssh -o IdentitiesOnly=yes -i ~/.ssh/testKey -F /dev/null'
echo '[remote "origin"] url = git+ssh://git@gitlab.com/myAccount/myRepo.git'

