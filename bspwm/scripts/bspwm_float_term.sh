#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    class=$1
    program=""
else
    class=$2
    program=$1
fi

id=$(xdotool search --class ${class})

if [ "$id" != "" ]; then
	bspc node "$id" --flag hidden -f
else
    if [[ "$program" = "" ]]; then #Floating Term
	    st -A 0.9 -c $class
    else
	    st -A 0.9 -c $class -e $program
    fi
fi
