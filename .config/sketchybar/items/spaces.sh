#!/bin/bash

SPACE_SIDS=(1 2 3 4 5 6 7 8 9 10)

for sid in "${SPACE_SIDS[@]}"
do
  sketchybar --add space space.$sid left                                 \
             --set space.$sid space=$sid                                 \
                              icon=$sid                                  \
                              label.font="SF Pro:Regular:16.0" \
                              label.padding_right=0                     \
                              icon.padding_left=8 \
                              label.y_offset=-1                          \
                              script="$PLUGIN_DIR/spaces.sh"
done