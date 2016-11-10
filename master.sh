#!/bin/bash

# Install and configure VIM
./vim.sh

# Configure git
./git.sh

# Install ruby, rails, and nodeJs
./rails.sh

# Install postgres database
./postgres.sh

# Overwrite bash config
cp -f .bashrc ~/.bashrc
. ~/.bashrc

echo "Environment is now configured for user"
