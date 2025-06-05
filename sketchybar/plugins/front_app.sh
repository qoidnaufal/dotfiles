#!/bin/sh

source "$CONFIG_DIR/tokens/cha_colors.sh"

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set "$NAME" label="$INFO" \
            background.color=$CHA_COLOR_BG1_75 \
        		background.corner_radius=20 \
        		background.height=24 \
            label.padding_left=8 \
            label.padding_right=8 \
            icon.background.image="app.$INFO" \
            icon.background.image.padding_left=8 \
            icon.background.image.scale=0.6
fi
