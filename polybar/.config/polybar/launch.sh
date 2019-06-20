#!/bin/bash
# polybar launch script copied from archlinux wiki

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch polybar, using default config location ~/.config/polybar/config
polybar bspwmbar &

echo "Polybar launched..."
