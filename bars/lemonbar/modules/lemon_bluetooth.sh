#!/bin/bash
#
# Bluetooth script module for lemonbar.

function bluetooth {
  . ${LEMON_PATH}/lib/lemon_utils.sh
  bluetooth=""
  while true; do
    state=$(bluetoothctl show | grep Powered | cut -d ':' -f2 | grep no)
    [[ -n "$state" ]] && bluetooth=" " || bluetooth=" "
    echo "T${bluetooth}"
    sleep 1s
  done
}


