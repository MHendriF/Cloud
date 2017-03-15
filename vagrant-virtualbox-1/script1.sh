#!/usr/bin/env bash
apt-get update
apt-get install -y apache2

# use to add ppa
apt-get install -y python-software-properties

# install php 7 and opcache
add-apt-repository ppa:ondrej/php
apt-get -y update
apt-cache search php7
apt-get install -y php7.0 php7.0-mysql
