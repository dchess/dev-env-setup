#!/bin/bash


# This script will install Ruby v 2.3.1 and all of its dependencies and Rails v 4.2.6
# Based on directions from http://gorails.com/setup/ubuntu/16.04

# Set env vars for notification colors
BLUE='\033[1;36m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

#Install some Ruby dependencies
printf "${YELLOW}Install Ruby dependencies\n${NC}"
sudo apt-get update
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev libgdbm-dev libncurses5-dev automake libtool bison 

# Using RVM method
printf "${YELLOW}Install Ruby using RVM\n${NC}"
curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.3.1
rvm use 2.3.1 --default
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.' >> ~/.bashrc

# Install Bundler
printf "${YELLOW}Install Bundler\n${NC}"
gem install bundler --no-document

# Install NodeJS for use in Rails asset pipeline
printf "${YELLOW}Install NodeJS\n${NC}"
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Rails v 4.2.6
printf "${YELLOW}Install Rails\n${NC}"
gem install rails -v 4.2.6 --no-document

# Check versions
printf "${YELLOW}Check versions installed\n${NC}"
ruby -v | xargs printf "${BLUE}%s${NC} " && printf '\n'
rails -v | xargs printf "${BLUE}%s${NC} " && printf '\n'
node -v | xargs printf "${BLUE}%s${NC} " && printf '\n'
