#!/usr/bin/env bash
apt-get update
apt-get install -y apache2

# use to add ppa
apt-get install -y python-software-properties

# install php 7
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
apt-get -y update
apt-get install -y php7.0 php7.0-mysql

#cd /scr/var/www/
#apt-get install -y unzip
#wget https://github.com/bcit-ci/CodeIgniter/archive/3.0.1.zip
#unzip 3.0.1.zip
#mv CodeIgniter-3.0.1 /var/www/codeigniter
#mv /scr/var/www/CodeIgniter-3.0.1 /var/www/codeigniter
#mv 3.0.1.zip /src/3.0.1.zip
