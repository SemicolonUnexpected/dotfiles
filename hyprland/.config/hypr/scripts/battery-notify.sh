#!/bin/bash
BAT="/sys/class/power_supply/BAT0"
LEVEL=$(cat "$BAT/capacity")
STATUS=$(cat "$BAT/status")

# Only notify if discharging
if [ "$STATUS" = "Discharging" ]; then
    for THRESHOLD in 15 10 5; do
        FLAG="/tmp/.battery_warned_${THRESHOLD}"
        if [ "$LEVEL" -le "$THRESHOLD" ] && [ ! -f "$FLAG" ]; then
            notify-send "⚠️ Low Battery" "Battery at ${LEVEL}%!" -u critical
            touch "$FLAG"
        fi
    done
else
    # Clear flags when charging
    rm -f /tmp/.battery_warned_*
fi
