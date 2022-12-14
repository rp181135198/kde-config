#!/bin/bash

if [[ $COLOR != "true" ]]; then
    source ./scripts/colors.sh
fi

sudo pacman -S --needed imwheel

printf "
# imwheel configuration for mouse scroll speed

# Speed up scrolling for google-chrome and pass unchanged for zoom
\"^google-chrome$\"
    None, Up, Button4, 5
    None, Down, Button5, 5
    Shift_L,   Up,   Shift_L|Button4, 4
    Shift_L,   Down, Shift_L|Button5, 4
    Control_L, Up,   Control_L|Button4
    Control_L, Down, Control_L|Button5
" > ~/.imwheelrc
