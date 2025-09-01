#!/bin/bash

sketchybar --add event input_change 'AppleSelectedInputSourcesChangedNotification' \
           --add item input_source right \
           --set input_source script="$PLUGIN_DIR/input_source.sh" \
		 icon.padding_left=10 \
		 icon.padding_right=0 \
	         label.padding_left=0 \
	         label.padding_right=8 \
           --subscribe input_source input_change
