#!/usr/bin/env bash

nodes=$(bspc query -N)
declare -a array_titles
declare -a array_nodes
titles=""

function get_title {
    xdo id $1
}

for node in $nodes; do
    var=$(get_title $node)
    echo $var
done
