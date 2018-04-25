#!/bin/bash

wget -q -P /tmp/ https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add /tmp/sublimehq-pub.gpg
sudo echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt-get install sublime-text -y
sudo rm /tmp/sublimehq-pub.gpg
