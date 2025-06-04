#!/usr/bin/env bash

source "$CONFIG_DIR/tokens/cha_colors.sh"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.drawing=on \
        background.color=$CHA_COLOR_YELLOW3_50 \
        background.corner_radius=30
        # background.border_width=1 \
else
  sketchybar --set $NAME background.drawing=off
fi
