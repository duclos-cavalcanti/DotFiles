#!/bin/bash
#
# Script to automate the most of my/a arch linux install.

usr=duclos
dotfiles=~/Documents/dotfiles

function install::log() {
  text=$1
  echo "LOG: ${text}..."
}

function install::preparation() {
  install::log "Loading Keys"
  loadkeys us

  install::log "Enabling Systemd"
  systemctl enable --now systemd timesyncd

  install::log "Setting timedatectl"
  timedatectl set-ntp true
}

function install::update_packages() {
  install::log "Updating Pacman"
  pacman -Syy archlinux-keyring
}

function install::partitioning {
  declare -a drives
  lines="$(lsblk -l | tail -4)"
  for line in $lines; do
    echo "$line"
    drives+=$(echo $line | awk '{ print $1 }')
  done

  # for drive in $drives; do echo "$drive"; done
}

function main() {
  # install::preparation
  # install::update_packages
  install::partitioning
}

main "$@"

