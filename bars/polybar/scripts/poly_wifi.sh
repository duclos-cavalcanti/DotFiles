#!/bin/bash
#
# Wifi script for the wifi polybar module.

connection=$(nmcli general status | grep "connected")
format="直"
format="%{T4}${format}"

if [[ -z $connection ]]; then
  echo "%{F#ff5252}${format}"
else
  echo "$format"
fi

