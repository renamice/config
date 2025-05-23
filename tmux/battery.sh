#!/bin/sh

state=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "state" | awk '{print $2}')
percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage" | awk '{print $2}')

if [ "$state" = "charging" ]; then
    echo "(●︎)$percentage"
else
    echo "(◯)$percentage"
fi
