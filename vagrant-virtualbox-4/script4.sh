#!/usr/bin/env bash

sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile

echo 'Provisioning virtual machine .....'
whoami
pwd

#install depedency
apt-get update
apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs

#install Ruby using rvm
apt-get install -y libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install -y 2.4.0
rvm use 2.4.0 --default
ruby -v

gem install bundler

#install Rails
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

gem install -y rails
rails -v
