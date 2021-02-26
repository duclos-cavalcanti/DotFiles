#!/bin/bash
#
# Simple script to launch/kill daemons.

daemon=$1
pid=$(pgrep $daemon)

if [ $? -eq 1 ]; then
    $daemon &
else
    killall $daemon
    $daemon &
fi
