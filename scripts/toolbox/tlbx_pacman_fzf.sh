#!/usr/bin/env bash

case "$1" in
"-s")
    pacman -Slq | fzf --multi --preview 'pacman -Si {$1}' | xargs -ro sudo pacman -S
    ;;

"-d")
    pacman -Qq | fzf --multi --preview 'pacman -Qi {$1}' | xargs -ro sudo pacman -Rns
    ;;

"-v")
    pacman -Qq | fzf --multi --preview 'pacman -Qi {$1}'
    ;;

*)
    # Do Nothing.
    ;;
esac
