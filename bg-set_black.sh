#!/bin/bash

# Setting a black background for mcedit
# Author: Neosy <neosy.dev@gmail.com>
#
#==================================
# Version 0.1
#==================================
#

INI_FILE_NAME="ini"
INI_FILE_PATH="$HOME/.config/mc"
INI_FILE="$INI_FILE_PATH/$INI_FILE_NAME"

COLOR_ARG_NAME='base_color'
BG_BLACK='editnormal=default,black:editwhitespace=default,red'

if [ ! -f "$INI_FILE" ]; then
    echo "File '$INI_FILE' not exists"
    exit
fi

#Backup
cp ${INI_FILE}{,.bak}

sed -i -E "s/^(${COLOR_ARG_NAME})=(.*)/${COLOR_ARG_NAME}=${BG_BLACK}/" ${INI_FILE}

exit
