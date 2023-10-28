#!/bin/bash

sudo apt-get update
sudo apt-get install apache2 -y
sudo ufw app list
sudo ufw allow 'Apache Full'
sudo ufw status
sudo systemctl status apache2

cd /etc/apache2/sites-available
nano 000-default.conf
DocumentRoot /home/user/myDir/

sudo subl /etc/apache2/apache2.conf
# <Directory /var/www/
<Directory /home/user/myDir>
	Options Indexes FollowSymLinks
	AllowOverride None
	Require all granted
</Directory>

sudo service apache2 restart