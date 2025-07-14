#!/usr/bin/env bash

source "$CONFIG_DIR/tokens/cha_colors.sh"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME label.color=$CHA_COLOR_WHITE
else
  sketchybar --set $NAME label.color=$CHA_COLOR_BG1
fi
