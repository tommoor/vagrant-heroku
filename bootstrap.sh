#!/usr/bin/env bash

# Set timezone to UTC
echo "Etc/UTC" | sudo tee /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

# update packages
apt-get update

# install rvm with ruby 1.9.3
curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enabled --ruby=1.9.3

# set rvm environment
source /home/vagrant/.rvm/scripts/rvm

# download latest source
git clone git@github.com:sqwiggle/sqwiggle-web.git

# install bundle gems
cd sqwiggle-web && bundle