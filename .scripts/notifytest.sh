#!/bin/sh

while [[ true ]]; do
        makoctl reload
        notify-send "Hello world! 1234567890"
        sleep 1.5
        notify-send -u critical "Critical notification"
        sleep 1.5
done

