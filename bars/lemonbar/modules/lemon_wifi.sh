#!/bin/bash
#
# Wifi script module for lemonbar.

function wifi {
  . ${LEMON_PATH}/lib/lemon_utils.sh
  while true; do
    connection=$(nmcli general status | tail -1 | awk '{ print $2 }')
    icon="直"
    wifi=""
    
    if [[ "$connection" != "full" ]]; then
      wifi=(_format "$icon" "$problem")
    else
      wifi=$icon
    fi
    echo "I${wifi}"
    sleep 60s
  done
}
