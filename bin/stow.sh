#!/bin/bash
#
# Personal Stow script of my dotiles onto a new machine.

ME=duclos
CASA=/home/${ME}

function stow::log() {
  text=$1
  echo "LOG: ${text}..."
}

function stow::remember() {
  text=$1
  echo "Remember to finish ${text} installation!!"
}

function stow::check_folder() {
  [ -d "$1" ] || { echo "Missing folder/software: $1"; exit 1; }
}

function stow::check_dependency() {
  command -v "$1" > /dev/null || { echo "Missing dependency: $1"; exit 1; }
}

function stow::preparations() {
  stow::log "Prepping"
  stow::check_dependency git
  mkdir -p /home/${ME}/.config
  mkdir -p /home/${ME}/Documents/dotfiles
  git clone /home/duclos/${ME}/Documents/dotfiles
  cd /home/${ME}/Documents/dotfiles
}

function stow::vim() {
  check_dependency vim
  stow::log "Placing vim"
  stow::check_folder vim

  mkdir -p ${CASA}/.config/vim
  mkdir -p ${CASA}/.config/vim/extern

  cp -r ${CASA}/dotfiles/vim/after    ${CASA}/.config/vim/
  cp -r ${CASA}/dotfiles/vim/autoload ${CASA}/.config/vim/
  cp -r ${CASA}/dotfiles/vim/colors   ${CASA}/.config/vim/
  cp -r ${CASA}/dotfiles/vim/ftdetect ${CASA}/.config/vim/
  cp -r ${CASA}/dotfiles/vim/ftplugin ${CASA}/.config/vim/
  cp -r ${CASA}/dotfiles/vim/indent   ${CASA}/.config/vim/
  cp -r ${CASA}/dotfiles/vim/info     ${CASA}/.config/vim/
  cp -r ${CASA}/dotfiles/vim/plugin   ${CASA}/.config/vim/
  cp -r ${CASA}/dotfiles/vim/spell    ${CASA}/.config/vim/
  cp -r ${CASA}/dotfiles/vim/syntax   ${CASA}/.config/vim/
  cp    ${CASA}/dotfiles/vim/RC/vimrc ${CASA}/.config/vim/
}

function stow::fish() {
  check_dependency fish
  stow::log "Placing fish"
  stow::check_folder shells/fish
  cp -r ${CASA}/dotfiles/fish    ${CASA}/.config/
}

function stow::bash() {
  check_dependency bash
  stow::log "Placing bash"
  stow::check_folder shells/bash
  mkdir -p ${CASA}/.config/bash
  cp -r ${CASA}/dotfiles/bash    ${CASA}/.config/
}

function stow::bspwm() {
  check_dependency bspwm
  stow::log "Placing bspwm"
  stow::check_folder bspwm
  cp -r ${CASA}/dotfiles/bspwm    ${CASA}/.config/
}

function stow::picom() {
  check_dependency picom
  stow::log "Placing picom"
  stow::check_folder picom
  cp -r ${CASA}/dotfiles/picom    ${CASA}/.config/
}

function stow::sxhkd() {
  check_dependency sxhkd
  stow::log "Placing sxhkd"
  stow::check_folder sxhkd
  cp -r ${CASA}/dotfiles/sxhkd    ${CASA}/.config/
}

function stow::zathura() {
  check_dependency zathura
  stow::log "Placing zathura"
  stow::check_folder zathura
  cp -r ${CASA}/dotfiles/zathura  ${CASA}/.config/
}

function stow::x11() {
  stow::log "Placing X11 files"
  stow::check_folder X11
  mkdir -p ${CASA}/.config/X11
  cp ${CASA}/dotfiles/X11/Xmodmap   ${CASA}/.config/X11/
  cp ${CASA}/dotfiles/X11/xprofile  ${CASA}/.xprofile
}

function stow::scripts() {
  stow::log "Placing scripts"
  stow::check_folder scripts
  mkdir -p ${CASA}/.scripts
  cp -r ${CASA}/dotfiles/scripts/toolbox ${CASA}/.scripts/tlbx
}

function stow::cron() {
  stow::log "Placing cron"
  stow::check_folder cron
  cp -r ${CASA}/dotfiles/cron/scripts ${CASA}/.scripts/cron
}

function stow::dunst() {
  check_dependency dunst
  stow::log "Placing dunst"
  stow::check_folder dunst
  cp -r ${CASA}/dotfiles/dunst ${CASA}/.config/
}

function stow::bars() {
  check_dependency polybar
  stow::log "Placing bars"
  stow::check_folder bars
  cp -r ${CASA}/dotfiles/bars/polybar ${CASA}/.config/
  cp -r ${CASA}/dotfiles/bars/lemonbar ${CASA}/.config/
}

function stow::misc() {
  stow::log "Placing misc files"
  stow::check_folder misc
  cp -r ${CASA}/dotfiles/misc/fonts/UbuntuMono /usr/share/fonts/
  cp -r ${CASA}/dotfiles/misc/fonts/UbuntuNerd /usr/share/fonts/
  cp -r ${CASA}/dotfiles/misc/fonts/DejaVuSansMono /usr/share/fonts/

  mkdir -p ${CASA}/.config/gdb
  cp -r ${CASA}/dotfiles/misc/languages/C/gdb ${CASA}/.config/

  mkdir -p ${CASA}/.config/ipython/profile_default/startup
  cp ${CASA}/dotfiles/misc/languages/python/ipython/ipython_config.py \
     ${CASA}/.config/ipython/profile_default/

  cp ${CASA}/dotfiles/misc/languages/python/ipython/colorscheme.py \
     ${CASA}/.config/ipython/profile_default/startup/

  cp ${CASA}/dotfiles/misc/languages/python/ipython/custom_prompt.py \
     ${CASA}/.config/ipython/profile_default/startup/
}

function main() {
  echo "STOWING DOTFILES"

  stow::preparations
  stow::vim
  stow::fish
  stow::bash
  stow::bspwm
  stow::bars
  stow::picom
  stow::sxhkd
  stow::zathura
  stow::scripts
  stow::cron
  stow::dunst
  stow::x11
  stow::misc

  stow::remember "Firefox/Mozilla"
  stow::remember "Cron"
}

main
