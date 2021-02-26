#!/bin/bash
#
# Dmenu script to show all hidden nodes' titles

custom_dmenu=$CUSTOM_DMENU_PROMPT
sticky=$(bspc query -N -n .sticky.hidden)
nodes=$(bspc query -N -n .hidden)

declare -A array_titles
declare -A array_nodes
i=0

function get_title {
  xdotool getwindowname $1
}

function append_arrays {
  title="$(get_title $1)"
  array_titles[$1]="$title"
  array_nodes["$title"]=$1
  i=$((i+1))
}

function gen_dict {
  for node in $1; do
    append_arrays $node
  done
}

function main {
  gen_dict $nodes
  
  answ=$(echo ${array_titles[@]} | $custom_dmenu -i -p "Hidden Nodes.")
  answ=${array_nodes["$answ"]}
  
  [[ -n $answ ]] && bspc node "$answ" -n focused -g hidden=off -f
}

main
