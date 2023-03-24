#!/bin/bash

if [[ $COLOR != "true" ]]; then
    source ./scripts/colors.sh
fi

echo "Now you have to provide path to image (in .jpg or .png format) to set as profile picture."
echo "Example: $HOME/picture/file_name.png"
read -p "Enter path to image to set as profile picture: " dp_location
#vared -p "Enter path to image to set as profile picture: " -c dp_location #this works in 'zsh'
if [ -f $dp_location ]; then
    cp $dp_location ~/.face.icon
    setfacl -m u:sddm:x ~ && setfacl -m u:sddm:r ~/.face.icon
else
    echo -e "$ERROR_MSG '$dp_location' not found."
    echo "Can't setup profile picture.."
fi
