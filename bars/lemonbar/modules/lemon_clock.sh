#!/bin/bash
#
# Date script module for lemonbar.

clock_refresh=60

function clock() {
  source ${LEMON_PATH}/lib/lemon_utils.sh
  hour=$(date +%H)
  minute=$(date +%M)
  clock="${hour}:${minute}"
  echo -n "$clock"
}
