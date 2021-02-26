#!/bin/bash
#
# Bluetooth script module for lemonbar.

bluetooth_refresh=1

function bluetooth {
  source ${LEMON_PATH}/lib/lemon_utils.sh
  state=$(bluetoothctl show | grep Powered | cut -d ':' -f2 | grep no)
  bluetooth=""

  [[ -n "$state" ]] && bluetooth=" " || bluetooth=" "
  echo -e "${bluetooth}"
}


