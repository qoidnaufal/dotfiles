#!/bin/sh

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set "$NAME" icon.background.image="app.$INFO" icon.background.image.scale=0.8
fi
