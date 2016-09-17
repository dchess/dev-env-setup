#!/bin/bash

# Install full version of vim, Ubuntu only has vim.tiny by default
sudo apt-get update
sudo apt-get install vim

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# overwrite .vimrc
# Plugins my .vimrc contains:
# -NERDTree
# -NERDCommenter
# -CtrlP
# -Vim ColorSchemes (with srcery installed by default)
cp -f .vimrc ~/.vimrc

# install .vim/colors files
mkdir .vim/colors
cp -R ./vimcolors/. ~/.vim/colors/
# set gnome terminal to match vim colorscheme srcery
cp  gnome_terminal.sh ~/
chmod +x gnome_terminal.sh
./gnome_terminal.sh

# Vundle Install all plugins
# If that fails, open vim and run :PluginInstall
vim +PluginInstall +qall
