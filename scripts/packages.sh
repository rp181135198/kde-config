#!/bin/bash

if [[ $COLOR != "true" ]]; then
    source ./scripts/colors.sh
fi

# Packages
sudo pacman -S --needed curl wget git gcc cmake make yay neofetch htop nano yakuake youtube-dl latte-dock kvantum gnome-keyring plasma-firewall gufw

# Extra Packages
sudo pacman -S --needed vlc elisa kdiff3 shotcut obs-studio

# AUR Packages
yay -S --needed google-chrome visual-studio-code-bin skypeforlinux-stable-bin

# AUR Extra Packages
#yay -S --needed droidcam droidcam-obs-plugin-bin
