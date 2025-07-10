#!/bin/sh

if pgrep -x tofi-run; then
	killall tofi-run
else
	tofi-run
fi
