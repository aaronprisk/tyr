#!/bin/bash

sudo sed -i.bak "/^# deb .*partner/ s/^# //" /etc/apt/sources.list
sudo apt update
sudo apt install adobe-flashplugin -y
