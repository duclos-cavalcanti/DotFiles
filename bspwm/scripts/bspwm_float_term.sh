#!/bin/bash
#
# Launches a floating terminal of class $1 and program $2.

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
  if [[ "$program" = "" ]]; then # Floating Term
	  alacritty --class "$class,$class"
  else
	  alacritty --class "$class,$class" -e $program
  fi
fi
