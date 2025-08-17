
##### Adding Left Items #####
# We add some regular items to the left side of the bar
# only the properties deviating from the current defaults need to be set

# sketchybar --add item space_separator left                         \
#            --set space_separator icon=                            \
#                                  padding_left=10                   \
#                                  padding_right=10                  \
#                                  label.drawing=off                 \

sketchybar --add item front_app left                               \
           --set front_app       script="$PLUGIN_DIR/front_app.sh" \
                                 icon.drawing=off                  \
                                 label.padding_left=10 \
           --subscribe front_app front_app_switched