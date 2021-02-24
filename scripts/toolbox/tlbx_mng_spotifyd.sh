#!/usr/bin/env bash

pid=$(pgrep spotifyd)

if [ $? -eq 1 ]; then
    spotifyd
else
    killall spotifyd
    spotifyd
fi
