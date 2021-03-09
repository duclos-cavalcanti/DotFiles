#!/bin/bash
#
# Date script module for lemonbar.

function clock() {
  . ${LEMON_PATH}/lib/lemon_utils.sh
  while true; do
    hour=$(date +%H)
    minute=$(date +%M)
    clock="${hour}:${minute}"
    echo "C${clock}"
    sleep 60s
  done
}
