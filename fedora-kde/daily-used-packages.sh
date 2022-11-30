#!/bin/env bash

## CHECK FOR SUDO or ROOT
if ! [ $(id -u) = 0 ]; then
  echo "This script must be run as sudo or root, try again..."
  exit 1
fi

# ------------------------------------------- CLI Packages Start -------------------------------------------
sudo dnf install \
  wget \
  curl \
  git \
  zsh \
  htop \
  neofetch \
  youtube-dl \
  imwheel
# -------------------------------------------- CLI Packages End --------------------------------------------




# -------------------------------------- KDE Extra Applications Start --------------------------------------
sudo dnf install \
  spectacle \
  gwenview \
  kate \
  ark \
  kdiff3 \
  elisa-player
# --------------------------------------- KDE Extra Applications End ---------------------------------------




# -------------------------------- Other Open source and free Software Start -------------------------------
sudo dnf install \
  gimp \
  inkscape \
  codeblocks \
  uget \
  ufw \
  timeshift \
  grub-customizer
# --------------------------------- Other Open source and free Software End --------------------------------




# Adding RPM Fusion Reop Start
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
# ------------------------------ Install packages from RPM Fusion Reop Start -------------------------------
sudo dnf install \
  shotcut \
  obs-studio \
  vlc #\
  #telegram-desktop
# ------------------------------- Install packages from RPM Fusion Reop End --------------------------------




# --------------------------------------- Third Party Packages Start ---------------------------------------
# Install third party repo
sudo dnf install fedora-workstation-repositories

# Installing Google Chrome
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable

# Installing VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code

# Installing Skype for linux
sudo curl -o /etc/yum.repos.d/skype-stable.repo https://repo.skype.com/rpm/stable/skype-stable.repo
sudo dnf install skypeforlinux

# Installing Microsoft Teams
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[teams]\nname=teams\nbaseurl=https://packages.microsoft.com/yumrepos/ms-teams\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/teams.repo'
sudo dnf check-update
sudo dnf install teams

# Installing Nvidia Driver
sudo dnf config-manager rpmfusion-nonfree-nvidia-driver --set-enabled
sudo dnf install akmod-nvidia acpi
# ---------------------------------------- Third Party Packages End ----------------------------------------