#!/usr/bin/env bash

function add_mode() {
    monitor="$1"
    mode="'2560x1440_60.00' 312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync"

    xrandr --newmode "$mode"
    xrandr --addmode "$monitor" 2560x1440_60.00
}

function primary_monitor() {
    xrandr | grep -E "eDP.* connected" | cut -d' ' -f1
}

function secondary_monitor() {
    xrandr | grep -E "HDMI.* connected" | cut -d' ' -f1
}

function count_monitors() {
    xrandr | grep " connected" | wc -l
}

function monitor_configuration() {
    count=$(count_monitors)
    primary=$(primary_monitor)
    secondary=$(secondary_monitor)


    if [ $count -gt 1 ]; then

        add_mode $primary
        xrandr --output "${primary}" --mode "2560x1440_60.00"
        xrandr --output "${secondary}" --mode "1920x1080" --right-of "${primary}"
        bspc monitor "${primary}" -d 1 
        bspc monitor "${secondary}" -d 2 3 4 5 6 7 8 9 10

        bspc desktop -f 4

    else
        #xrandr --output "${primary}" --auto --primary --pos 0x0 
        xrandr --output "${primary}" --mode 2560x1440
        bspc monitor -d 1 2 3 4 5 6 7 8 9 10

        bspc desktop -f 4
    fi

    ~/.config/polybar/launch.bash

}
