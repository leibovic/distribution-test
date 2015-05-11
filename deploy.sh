#!/bin/bash

source $(dirname $0)/build

# Replace this value to push to different release channels.
# Nightly = org.mozilla.fennec
# Aurora = org.mozilla.fennec_aurora
# Beta = org.mozilla.firefox_beta
# Release = org.mozilla.firefox
ANDROID_APP_ID=org.mozilla.fennec_leibovic

# Push the add-on to your device to test.
adb push "$XPI" /sdcard/"$XPI" && \
adb shell am start -a android.intent.action.VIEW \
                   -c android.intent.category.DEFAULT \
                   -d file:///mnt/sdcard/"$XPI" \
                   -n $ANDROID_APP_ID/.App && \
echo Pushed $XPI to $ANDROID_APP_ID
