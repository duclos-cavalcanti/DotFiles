#!/bin/bash
#
# Wifi script module for lemonbar.

wifi_refresh=60

function wifi {
  source ${LEMON_PATH}/lib/lemon_utils.sh
  connection=$(nmcli general status | tail -1 | awk '{ print $2 }')
  icon="直"
  wifi=""
  
  if [[ "$connection" != "full" ]]; then
    wifi=(_format "$icon" "$problem")
  else
    wifi=$icon
  fi
  echo -e "${wifi}"
}
