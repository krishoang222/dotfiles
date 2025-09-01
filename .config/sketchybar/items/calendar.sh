#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀧞  \
                          update_freq=30 \
                          icon.drawing=off \
                          label.padding_left=10 \
                          script="$PLUGIN_DIR/calendar.sh"
