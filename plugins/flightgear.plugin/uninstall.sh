#!/bin/bash

sudo apt remove flightgear -y
sudo add-apt-repository --remove ppa:saiarcot895/flightgear -y
sudo rm /etc/apt/sources.list.d/saiarcot895-ubuntu-flightgear-xenial.list
sudo rm /etc/apt/sources.list.d/saiarcot895-ubuntu-flightgear-xenial.list.save
