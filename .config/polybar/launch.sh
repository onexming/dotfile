#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#polybar -rq top &
polybar -q top &

#polybar -q left &

#polybar -q all &

echo "Polybar launched..."

