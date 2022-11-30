#!/bin/bash

if [[ $COLOR != "true" ]]; then
    source ./scripts/colors.sh
fi

sudo pacman -S --needed ttf-jetbrains ttf-jetbrains-mono
