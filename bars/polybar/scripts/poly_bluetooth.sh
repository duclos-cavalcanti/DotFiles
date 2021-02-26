#!/bin/bash
#
# Bluetooth script for the bluetooth polybar module.

bluetooth_state=$(bluetoothctl show | grep Powered | cut -d ':' -f2 | grep no)

if [[ -n "$bluetooth_state" ]]; then
  color="%{F#ffffff}"
  format="%{T4} "
  echo "${color}${format}"
else
  format="%{T4} "
  echo "$format"
fi
