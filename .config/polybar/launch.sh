#!/usr/bin/env sh

# Terminate already running bar instances

killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload mainbar &
  done
else
  polybar --reload mainbar &
fi
