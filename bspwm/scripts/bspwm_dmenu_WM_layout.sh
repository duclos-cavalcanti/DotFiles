#!/usr/bin/env bash

custom_dmenu=$CUSTOM_DMENU_PROMPT
answ=$(echo -e "Regular\nNone" | $custom_dmenu -i -p "Launch Window Layouts:") 

case "$answ" in
"Regular")
    ${BSPWM_PATH}/bspwm_regular_WM_layout.bash
    ;;

"None")
    # Do Nothing.
    ;;
*) 
    echo "Unavailable Command."
esac
