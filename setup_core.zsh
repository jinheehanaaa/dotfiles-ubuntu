#!/usr/bin/env zsh

echo "\n<<< Starting Core Setup >>>\n"

sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade
sudo apt install preload
sudo apt install python3-pip
pip install pynvim
sudo apt install dmidecode
sudo apt install clang
# https://apt.syncthing.net/

# https://keepassxc.org/



