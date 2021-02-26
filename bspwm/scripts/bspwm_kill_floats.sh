#!/bin/bash
#
# Kills all floating+sticky windows.

nodes=$(bspc query -N -n .floating.sticky)

function bspwm_kill_floats {
  for node in $nodes; do
	  bspc node "$node" -k
  done
}

function main {
  bspwm_kill_floats
}

main



