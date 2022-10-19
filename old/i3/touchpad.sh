#!/bin/bash

declare -i ID
ID=`xinput list | grep -Eio '(touchpad|glidepoint)\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'`
declare -i TAP
TAP=`xinput list-props 13 | grep 'Tapping Enabled' | awk '{print $4}' | grep -Eo '[0-9][0-9][0-9]'`
xinput set-prop $ID $TAP 1
# echo "Touchpad enabled."
# notify-send -a 'Touchpad' 'Enabled' -i /usr/share/icons/Adwaita/48x48/devices/input-touchpad.png
