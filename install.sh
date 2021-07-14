#!/bin/bash

set -e

sudo apt update
sudo apt -y install x11-xserver-utils
sudo apt -y install make build-essential
sudo make
sudo cp start.sh /usr/local/bin/monitor-brightness.sh
./start.sh
