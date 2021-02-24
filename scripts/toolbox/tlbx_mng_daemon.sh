#!/usr/bin/env bash

daemon=$1
pid=$(pgrep $daemon)

if [ $? -eq 1 ]; then
    $daemon &
else
    killall $daemon
    $daemon &
fi
