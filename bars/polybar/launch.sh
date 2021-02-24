#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

source ${TLBX_PATH}/tlbx_monitors_functions.sh
count=$(count_monitors)

if [ $count -gt 1 ]; then
    polybar main -c ~/.config/polybar/config.ini &
    polybar secondary -c ~/.config/polybar/config.ini &
else
    polybar main -c ~/.config/polybar/config.ini &
fi
