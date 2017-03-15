#!/usr/bin/env bash

sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile

echo 'Provisioning virtual machine .....'
whoami
pwd

#install depedency
apt-get update
apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs

#install Ruby using rvm
apt-get install -y git
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

rbenv install -v 2.2.3
rbenv global 2.2.3

ruby -v
echo "gem: --no-document" > ~/.gemrc
gem install bundler

#install Rails
gem install rails
rbenv rehash
rails -v
