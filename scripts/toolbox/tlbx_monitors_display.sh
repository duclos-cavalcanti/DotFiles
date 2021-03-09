#!/bin/bash
#
# Simple script to set correctly the current monitors resolutionSimple script to set correctly the current monitors resolutions.


. ${TLBX_PATH}/tlbx_monitors_functions.sh

function main() {
  count=$(monitors::count_monitors)
  primary=$(monitors::primary_monitor)
  secondary=$(monitors::secondary_monitor)

  if [ $count -gt 1 ]; then
    xrandr --output "${primary}" --mode "1920x1080"
    xrandr --output "${secondary}" --mode "1920x1080" --right-of "${primary}"
  else
    xrandr --output "${primary}" --mode "1920x1080"
  fi
}

main

