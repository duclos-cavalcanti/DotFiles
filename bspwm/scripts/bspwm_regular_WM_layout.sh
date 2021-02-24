#!/usr/bin/env bash

bspc desktop -f 1 && firefox

bspc desktop -f 3 && firefox && bspc desktop -l next

bspc desktop -f 5 && firefox && bspc desktop -l next

bspc desktop -f 7 && firefox
bspc desktop -f 0 && thunderbird &

bspc desktop -f 4

${TMUX}/tmux_dmenu_sessions.bash
