#!/bin/bash

BSPWMBAR_PID=`pgrep -u $UID -f "polybar bspwmbar"`
STATSBAR_PID=`pgrep -u $UID -f "polybar statsbar"`

if [[ "$STATSBAR_PID" == "" ]]; then
	polybar statsbar &
	echo "cmd:toggle" > /tmp/polybar_mqueue.$BSPWMBAR_PID
	exit
fi

echo "cmd:toggle" > /tmp/polybar_mqueue.$STATSBAR_PID
echo "cmd:toggle" > /tmp/polybar_mqueue.$BSPWMBAR_PID
