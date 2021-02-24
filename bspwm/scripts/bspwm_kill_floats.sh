#!/usr/bin/env bash

purpose=$1

id_scratch=$(xdotool search --class scratchterm)
id_spot=$(xdotool search --class spotterm)

function bspwm_kill_node {
	bspc node "$1" -k
}

function bspwm_kill_floats {
    if [ -z "$id_scratch" ] && [ -z "$id_spot" ]; then
        bspc desktop -s ${target_desktop} --follow
    
    elif [ -n "$id_scratch" ] && [ -z "$id_spot" ]; then
    	bspwm_kill_node "$id_scratch"
    
    elif [ -n "$id_spot" ] && [ -z $id_scratch ]; then
    	bspwm_kill_node "$id_spot"
    
    else
    	bspwm_kill_node "$id_scratch"
    	bspwm_kill_node "$id_spot"
    
    fi
}

[[ $purpose == "exec" ]] && bspwm_kill_floats



