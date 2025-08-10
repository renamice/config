state=$(cat /sys/class/power_supply/BAT0/status)

if [ "$state" = "Charging" ]; then
    echo "(●︎)$percentage"
else
    echo "(◯)$percentage"
fi
