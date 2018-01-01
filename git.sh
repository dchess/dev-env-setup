#!/bin/bash

# Set env vars for colors
YELLOW='\033[1;33m'
NC='\033[0m'

printf "${YELLOW}Enter your git username:\n${NC}"
read name
printf "${YELLOW}Enter your git email:\n${NC}"
read email

git config --global core.editor "vim"
git config --global user.name $name
git config --global user.email $email

cat << EOF >> ~/.gitconfig
[alias]
  co = checkout
  cob = checkout -b
  cm = !git add -A && git commit -m
  ls = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate
  ll = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat
  fl = log -u
  graph = log --graph --oneline --decorate --all
  st = status -s
  find = "!git ls-files | grep -i"
  grep = grep -Ii
  la = "!git config -l | grep alias | cut -c 7-"
EOF
