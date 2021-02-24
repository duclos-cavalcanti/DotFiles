#!/usr/bin/env bash
# Bluetooth script module for lemonbar.

_bluetooth_refresh=1

function bluetooth {
    source ~/.config/lemonbar/lib/lemon_utils.sh
    state=$(bluetoothctl show | grep Powered | cut -d ':' -f2 | grep no)
    bluetooth=""

    [[ -n "$state" ]] && bluetooth=" " || bluetooth=" "
    echo -e "${bluetooth}"
}


