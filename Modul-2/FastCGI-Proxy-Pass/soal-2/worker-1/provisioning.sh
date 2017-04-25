#!/usr/bin/env bash

# installs add-apt-repository
sudo apt-get install -y software-properties-common

sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449
sudo add-apt-repository "deb http://dl.hhvm.com/ubuntu $(lsb_release -sc) main"
sudo apt-get update
sudo apt-get install -y hhvm
sudo update-rc.d hhvm defaults
