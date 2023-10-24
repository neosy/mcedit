#!/bin/bash

# Setting a default background for mcedit
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

if [ ! -f "$INI_FILE" ]; then
    echo "File '$INI_FILE' not exists"
    exit
fi

#Backup
cp ${INI_FILE}{,.bak}

sed -i -E "s/^(${COLOR_ARG_NAME}=)(.*)/${COLOR_ARG_NAME}=/" ${INI_FILE}

exit
