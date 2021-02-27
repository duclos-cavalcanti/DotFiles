#!/bin/bash
#
# Wifi script for the wifi polybar module.

connection=$(nmcli general status | tail -1 | awk '{ print $2 }')
format="直"
format="%{T4}${format}"

if [[ "$connection" != "full" ]]; then
  echo "%{F#ff5252}${format}"
else
  echo -e "$format"
fi

