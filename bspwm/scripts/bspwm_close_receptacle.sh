#!/usr/bin/env bash

# Closes all receptacles
for win in $(bspc query -N -n .leaf.\!window)
do
    bspc node $win -k
done

