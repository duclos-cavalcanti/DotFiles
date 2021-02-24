#!/usr/bin/env bash

#$1 IS THE PROMPT MESSAGE, $2 IS THE COMMAND TO BE RUNNED

custom_dmenu=$CUSTOM_DMENU_PROMPT
answ=$(echo -e "No\nYes" | $custom_dmenu -i -p $1) 

[ $answ == "Yes" ] && $2
