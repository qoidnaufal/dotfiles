#!/bin/bash

POPUP_OFF='sketchybar --set apple.logo popup.drawing=off'
POPUP_CLICK_SCRIPT='sketchybar --set $NAME popup.drawing=toggle'

apple_logo=(
  icon=
  icon.font="JetBrains Mono:Black:17.0"
  icon.color=0xffffffff
  icon.y_offset=-1
	icon.padding_left=8
	icon.padding_right=8
	background.color=$CHA_COLOR_BG1_75
	background.corner_radius=20
	background.height=24
  padding_right=8
  label.drawing=off
  click_script="$POPUP_CLICK_SCRIPT"
  popup.height=45
  popup.background.color=0xff202020
  popup.background.corner_radius=8
  popup.background.border_width=2
  popup.background.border_color=$CHA_COLOR_YELLOW3_50
)

apple_prefs=(
  icon=⚙️
  icon.font="JetBrains Mono:Black:17.0"
  icon.padding_left=10
  icon.padding_right=5
  label="Preferences"
  label.padding_left=5
  label.padding_right=10
  click_script="open -a 'System Preferences'; $POPUP_OFF"
)

apple_activity=(
  icon=🖥️
  icon.font="JetBrains Mono:Black:17.0"
  icon.padding_left=10
  icon.padding_right=5
  label="Activity"
  label.padding_left=5
  label.padding_right=10
  click_script="open -a 'Activity Monitor'; $POPUP_OFF"
)

apple_lock=(
  icon=🔒
  icon.font="JetBrains Mono:Black:17.0"
  icon.padding_left=10
  icon.padding_right=5
  label="Lock Screen"
  label.padding_left=5
  label.padding_right=10
  click_script="pmset displaysleepnow; $POPUP_OFF"
)

sketchybar --add item apple.logo left                  \
           --set apple.logo "${apple_logo[@]}"         \
                                                       \
           --add item apple.prefs popup.apple.logo     \
           --set apple.prefs "${apple_prefs[@]}"       \
                                                       \
           --add item apple.activity popup.apple.logo  \
           --set apple.activity "${apple_activity[@]}" \
                                                       \
           --add item apple.lock popup.apple.logo      \
           --set apple.lock "${apple_lock[@]}"
