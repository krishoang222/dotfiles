#!/bin/sh

# NOTE: the event AppleSelectedInputSourcesChangedNotification trigger around 10 times per event

defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | grep -q 'com.apple.inputmethod.VietnameseIM' 
# store error from previous check command to IS_VN
IS_VN=$?
if [ $IS_VN -eq 0 ]; then
  LABEL='V'
  ICON='🇻🇳'
else
  LABEL='A'
  ICON='🇬🇧'
fi

sketchybar --set $NAME icon="$ICON"
