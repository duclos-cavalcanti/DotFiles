#!/usr/bin/env bash
# Date script module for lemonbar.

_clock_refresh=60

function clock() {
    source ~/.config/lemonbar/lib/lemon_utils.sh
    hour=$(date +%H)
    minute=$(date +%M)
    clock="${hour}:${minute}"
    echo -e "$clock"
}
