#!/usr/bin/env bash
# Wifi script module for lemonbar.

_wifi_refresh=60

function wifi {
    source ~/.config/lemonbar/lib/lemon_utils.sh
    icon="直"
    wifi=""
    connection=$(nmcli general status | tail -1 | awk '{ print $2 }')
    
    if [[ "$connection" != "full" ]]; then
        wifi=(_format "$icon" "$problem")
    else
        wifi=$icon
    fi
    echo -e "${wifi}"
}
