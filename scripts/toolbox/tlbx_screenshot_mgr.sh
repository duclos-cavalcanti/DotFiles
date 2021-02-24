#!/usr/bin/env bash

custom_dmenu=$CUSTOM_DMENU_PROMPT
answ=$($custom_dmenu -i -p "Screenshot Name:") 

if [ -n $answ ]; then
    scrot -s ~/Pictures/${answ}.png
fi

