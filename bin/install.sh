#!/usr/bin/env bash

usr=duclos
dotfiles=~/Documents/dotfiles

function _log() {
    text=$1
    echo "LOG: ${text}..."
}

function initial_prep() {
    _log "Initial Prep"
    loadkeys us
    systemctl enable --now systemd timesyncd
    timedatectl set-ntp true
}

function pacman_update() {
    _log "Updating Pacman"
    pacman -Syy archlinux-keyring
}

function main() {
    initial_prep
    pacman_update
}

main

