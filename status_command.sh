#!/bin/zsh
while true; do
    WIFI=$(/home/asurve/.config/sway/wifi_status.sh)
    BATTERY=$(/home/asurve/.config/sway/battery_status.sh)
    DATE=$(date "+%m-%d-%Y %I:%M %p")
    echo "$WIFI | $BATTERY | $DATE"
    sleep 5
done
