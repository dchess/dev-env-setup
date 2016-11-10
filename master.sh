#!/bin/bash

# Update system
sudo apt-get update

# Install and configure VIM
./vim.sh

# Configure git
./git.sh

# Install ruby, rails, and nodeJs
./rails.sh

# Install Heroku Toolbelt
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku --version

# Install postgres database
./postgres.sh
psql --version

# Overwrite bash config
cp -f .bashrc ~/.bashrc
source ~/.bashrc
