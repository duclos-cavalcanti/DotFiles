#!/usr/bin/env bash
#
# Bluetooth script module for lemonbar.

_battery_refresh=60

function battery {
    source ~/.config/lemonbar/lib/lemon_utils.sh
    b_num=0
    b_info=$(acpi -b 2>/dev/null | grep "Battery $b_num")
    b_perc=$(echo "$state" | awk '{ print $4 }')
    b_perc_num=$(echo $b_perc | grep -Eo '[0-9]*')

    battery=""
    if [[ $b_perc_num -lt 20  ]]; then
        icon=" "
    elif [[ $b_perc_num -lt 40  ]]; then
        icon=" "
    elif [[ $b_perc_num -lt 60  ]]; then
        icon=" "
    else
        icon=" "
    fi

    battery="$icon"
    battery=$(_padding ${battery})
    battery=$(_padding ${battery})
    echo -e "${battery}"
}


