#!/bin/bash

# CURRENT_WIFI="$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)"
SSID="$(ipconfig getsummary "$(networksetup -listallhardwareports | awk '/Wi-Fi|AirPort/{getline; print $NF}')" | grep '  SSID : ' | awk -F ': ' '{print $2}')"
NAME=wifi

if [ "$SSID" = "" ]; then
    sketchybar -m --set $NAME \
        label.drawing=on \
        label="DISCONNECTED" \
        icon=󰤭 \
        icon.padding_right=6
else
    sketchybar -m --set $NAME \
        label.drawing=on \
        label="$SSID" icon=  \
    		icon.padding_right=4  \
    		label.padding_right=8
fi
