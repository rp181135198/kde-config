#!/bin/bash

if [[ $COLOR != "true" ]]; then
    source ./scripts/colors.sh
fi

# Used Variables
DIR_WINE=~/.wine
DIR_WIN64=~/.wine/win64
PREFIX=~/.wine/win64
ARCH=win64

echo "Installing required packages ..."
sudo pacman -S --needed wine winetricks zenity

echo "Creating directories ..."
# Creating .wine directories
if [ -d "$DIR_WINE" ]; then
   echo "'$DIR_WINE' found ..."
else
   echo -e "$WARNING_MSG '$DIR_WINE' not found."
   echo "creating directory '$DIR_WINE'"
   mkdir $DIR_WINE
fi

# Creating directory for wine bottle
if [ -d "$DIR_WIN64" ]; then
   echo "'$DIR_WIN64' found ..."
else
   echo -e "$WARNING_MSG '$DIR_WIN64' not found."
   echo "creating directory '$DIR_WIN64'"
   mkdir $DIR_WIN64
fi

# Initializing wine at DIR_WIN64
echo "Initializing wine at '$DIR_WIN64' ..."
WINEPREFIX=$PREFIX WINEARCH=$ARCH winecfg

# Starting to install libraries and other stuffs from winetricks
echo "Installing common windows fonts ..."
WINEPREFIX=$PREFIX WINEARCH=$ARCH winetricks corefonts consolas pptfonts tahoma verdana

echo "Installing libraries ..."
read -p "Do you want to install libraries for MS Office (Y/n)? " input
if [[ $input == "Y" || $input == "y" ]]; then
   echo "Installing libraries for using MS Office 2007 (or above) ..."
   WINEPREFIX=$PREFIX WINEARCH=$ARCH winetricks msxml6
fi

read -p "Do you want to install libraries for Photoshop (Y/n)? " input
if [[ $input == "Y" || $input == "y" ]]; then
   echo "Installing libraries for using Photoshot CS6 (or above) ..."
   WINEPREFIX=$PREFIX WINEARCH=$ARCH winetricks atmlib gdiplus msxml3 msxml6 vcrun2005 vcrun2005sp1 vcrun2008 ie6 fontsmooth-rgb gecko
fi

echo -e "$SUCCESS_MSG Setup of wine is complete"
echo "Now you can install your windows softwares in linux"
echo "follow below example to install apps"
echo "WINEPREFIX=$DIR_WIN64 WINEARCH=$ARCH wine program_name.exe"
