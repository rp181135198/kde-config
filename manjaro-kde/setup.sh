#!/bin/bash

MAIN_DIR=$(pwd)
source $MAIN_DIR/scripts/colors.sh
COLOR="true"

# Updating Full System
echo "Updating full system ..."
sudo pacman -Syu

# Installing Packages
echo "Installing software packages ..."
sh ./scripts/packages.sh

# Fonts
echo "Installing fonts ..."
sh ./scripts/fonts.sh

# Mouse setup
echo "Setting mouse wheel scroll functionality for xorg ..."
sh ./scripts/mouse.sh
"
# Customizing ~/.zshrc
if [ -f ~/.zshrc ]; then
    echo "'$HOME/.zshrc' found ..."
    echo "Customizing $HOME/.zshrc ..."
    cat ./user_home/.zshrc >> ~/.zshrc
    cp ./user_home/.zsh_custom ~/.zsh_custom
    source ~/.zshrc
else
    echo -e "$WARNING_MSG '$HOME/.zshrc' not found."
    echo "creating file '$HOME/.zshrc'"
    cp ./user_home/.zshrc ~/.zshrc

    if [ -d "$HOME/.config/zsh" ]; then
        echo "'$HOME/.config/zsh' found ..."
    else
        echo "'$HOME/.config/zsh' not found ..."
        echo "creating directory '$HOME/.config/zsh'"
        mkdir "'$HOME/.config/zsh'"
    fi
    cp ./user_home/zsh_custom.zsh ~/.config/zsh/zsh_custom.zsh
fi
"
# Setting profile picture in SDDM
echo "Setting profile picture in SDDM ..."
sh ./scripts/setup_profile_picture_in_SDDM.sh

# Installing applets
printf "
Go to add widgits and download the following widgits
* Latte Spacer
* Latte Separator
* Mini Task Manager
* Launchpad
* Kpple Menu
* Media Player
* Application Title
* Global Menu
* Window Button
* Ditto Menu
* Inline Clock
* Net Speed
* Todo List
"
