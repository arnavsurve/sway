#!/bin/bash
SSID=$(/usr/bin/nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)
SIGNAL=$(/usr/bin/nmcli -t -f active,signal dev wifi | grep '^yes' | cut -d: -f2)
if [ -z "$SSID" ]; then
    echo "No WiFi"
else
    echo "$SSID ($SIGNAL%)"
fi
