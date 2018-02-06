#!/bin/bash

# download ngrok
wget -O ~/Downloads/ngrok.zip "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip"

# unzip ngrok
unzip ~/Downloads/ngrok.zip -d ~/

# clean up downloaded file
rm ~/Downloads/ngrok.zip
