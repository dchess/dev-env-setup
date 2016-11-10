#!/bin/bash

echo "Enter your git username:"
read name
echo "Enter your git email:"
read email

git config --global core.editor "vim"
git config --global user.name $name
git config --global user.email $email

cat << EOF >> ~/.gitconfig
[alias]
  co = checkout
  cob = checkout -b
  cm = !git add -A && git commit -m
  ls = log --pretty=format:"%C(yellow)%h%Cred%d\\\\ %Creset%s%Cblue\\\\ [%cn]" --decorate
  ll = log --pretty=format:"%C(yellow)%h%Cred%d\\\\ %Creset%s%Cblue\\\\ [%cn]" --decorate --numstat
  fl = log -u
  graph = log --graph --oneline --decorate --all
  st = status -s
EOF
