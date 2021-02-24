#!/usr/bin/env bash

#Returns leaf nodes that dont contain windows AKA Receptacles
query=$(bspc query -N -n .leaf.\!window -d focused)

#Returns currently focused node
id=$(bspc query -N -n focused)

bspc node ${id} -n ${query}

