#!/bin/bash

# Update system
sudo apt-get update
sudo apt-get install python3-venv

# Install and configure VIM
./vim.sh

# Configure git
./git.sh

# Install ngrok
./ngrok.sh

# Install Heroku Toolbelt
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku --version

# Install postgres database
./postgres.sh
psql --version

# Overwrite bash config
cp -f .bashrc ~/.bashrc
source ~/.bashrc
