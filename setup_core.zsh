#!/usr/bin/env zsh

echo "\n<<< Starting Core Setup >>>\n"

sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade
sudo apt install preload