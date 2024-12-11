#!/bin/bash
CAPACITY=$(cat /sys/class/power_supply/BAT*/capacity)
STATUS=$(cat /sys/class/power_supply/BAT*/status)
echo "$STATUS: $CAPACITY%"
