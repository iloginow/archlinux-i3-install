#!/bin/bash
set -e

#Sound
sudo pacman -S pulseaudio pulseaudio-alsa pavucontrol  --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly  gstreamer  --noconfirm --needed



echo "################################################################"
echo "#########   sound software software installed   ################"
echo "################################################################"
