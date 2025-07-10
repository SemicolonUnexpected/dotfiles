#!/bin/sh

if pgrep -x tofi-drun; then
	killall tofi-drun
else
	tofi-drun
fi
