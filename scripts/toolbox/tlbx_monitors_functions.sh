#!/bin/bash
#
# Function library used to interact with xrandr for monitor configuration.

function monitors::add_mode() {
  monitor="$1"
  mode="'2560x1440_60.00' 312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync"

  xrandr --newmode "$mode"
  xrandr --addmode "$monitor" 2560x1440_60.00
}

function monitors::primary_monitor() {
  xrandr | grep -E "eDP.* connected" | cut -d' ' -f1
}

function monitors::secondary_monitor() {
  xrandr | grep -E "HDMI.* connected" | cut -d' ' -f1
}

function monitors::count_monitors() {
  xrandr | grep " connected" | wc -l
}

function monitors::configuration() {
  count=$(monitors::count_monitors)
  primary=$(monitors::primary_monitor)
  secondary=$(monitors::secondary_monitor)


  if [ $count -gt 1 ]; then
    xrandr --output "${primary}" --auto
    xrandr --output "${secondary}" --mode "1920x1080" --right-of "${primary}"
    bspc monitor "${primary}" -d 1 2
    bspc monitor "${secondary}" -d 3 4 5 6 7 8 9 10
    bspc desktop -f 4

  else
    xrandr --output "${primary}" --auto
    bspc monitor -d 1 2 3 4 5 6 7 8 9 10
    bspc desktop -f 4
  fi

  ~/.config/polybar/launch.sh
}
