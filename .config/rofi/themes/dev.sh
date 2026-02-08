#!/bin/bash

THEME_PATH="$HOME/.config/rofi/themes/custom-theme.rasi"

killall rofi 2> /dev/null

echo "$THEME_PATH" | entr -s \
    "echo '重新加载rofi'; killall rofi 2>/dev/null; rofi -theme $THEME_PATH -show drun &"
