#!/bin/sh

source "$CONFIG_DIR/tokens/cha_colors.sh"

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set "$NAME" label="$INFO" \
            background.color=$CHA_PIZZAZ \
            background.border_color=$CHA_EASTERN_BLUE \
            label.padding_left=4 \
            label.padding_right=8 \
            label.color=$CHA_COLOR_BG1 \
            icon.background.image="app.$INFO" \
            icon.background.image.padding_left=6 \
            icon.background.image.scale=0.6
fi
