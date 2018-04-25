#!/bin/bash

wget -q -P /tmp/ https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add /tmp/linux_signing_key.pub
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install google-chrome-stable -y
sudo rm /tmp/linux_signing_key.pub
