#!/bin/bash

sketchybar --add item media center \
           --set media label.color=$ACCENT_COLOR \
                       label.max_chars=25 \
                       scroll_texts=on \
                       scroll_duration=20000 \
                       icon=􀑪             \
                       icon.color=$ACCENT_COLOR   \
                       label.font="SF Pro:Semibold:12.0"     \
                       background.drawing=off \
                       script="$PLUGIN_DIR/media.sh" \
           --subscribe media media_change
