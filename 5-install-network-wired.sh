#!/bin/bash
set -e

#Network

sudo pacman -S networkmanager --noconfirm --needed
sudo pacman -S network-manager-applet --noconfirm --needed
sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service



echo "################################################################"
echo "#########   network management software installed  #############"
echo "################################################################"

