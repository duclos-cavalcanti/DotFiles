#!/bin/bash
#
# Updates my dotfiles.

DOTFILES_PATH=~/Documents/dotfiles

function backup_fish_shell {
  cp -r ~/.config/fish/* ${DOTFILES_PATH}/shells/fish/
}

function backup_bash_shell {
  cp ~/.config/bash/bashrc ${DOTFILES_PATH}/shells/bash/
  rm -rf ${DOTFILES_PATH}/scripts/toolbox
  cp -r ~/.scripts/tlbx ${DOTFILES_PATH}/scripts/toolbox
}

function backup_vim {
  cp -r ~/.config/vim/plugin/ ${DOTFILES_PATH}/vim/
  cp -r ~/.config/vim/ftdetect/ ${DOTFILES_PATH}/vim/
  cp -r ~/.config/vim/ftplugin/ ${DOTFILES_PATH}/vim/
  cp -r ~/.config/vim/colors ${DOTFILES_PATH}/vim/
  cp -r ~/.config/vim/indent ${DOTFILES_PATH}/vim/
  cp -r ~/.config/vim/syntax ${DOTFILES_PATH}/vim/
  cp -r ~/.config/vim/spell ${DOTFILES_PATH}/vim/
  cp -r ~/.config/vim/after ${DOTFILES_PATH}/vim/
  cp -r ~/.config/vim/autoload ${DOTFILES_PATH}/vim/
  cp -r ~/.config/vim/info/viminfo ${DOTFILES_PATH}/vim/info/
  cp -r ~/.config/vim/vimrc ${DOTFILES_PATH}/vim/RC/
}

function backup_tmux {
  cp ~/.config/tmux/tmux.conf ${DOTFILES_PATH}/tmux/
  rm -rf ${DOTFILES_PATH}/tmux/scripts
  cp -r ~/.config/tmux/scripts ${DOTFILES_PATH}/tmux/
}

function backup_polybar {
  rm -rf ${DOTFILES_PATH}/bars/polybar
  cp -r ~/.config/polybar ${DOTFILES_PATH}/bars/
}

function backup_lemonbar {
  rm -rf ${DOTFILES_PATH}/bars/lemonbar
  cp -r ~/.config/lemonbar ${DOTFILES_PATH}/bars/
}

function backup_bspwm {
  cp ~/.config/bspwm/bspwmrc ${DOTFILES_PATH}/bspwm/
  rm -rf ${DOTFILES_PATH}/bspwm/scripts
  cp -r ~/.config/bspwm/scripts ${DOTFILES_PATH}/bspwm/
}

function backup_python_files {
  if [ -d ~/.config/pudb ]; then
    cp ~/.config/pudb/custom_theme.py ${DOTFILES_PATH}/misc/languages/python/pudb/
    cp ~/.config/pudb/light_custom_theme.py ${DOTFILES_PATH}/misc/languages/python/pudb/
    cp ~/.config/pudb/dark_custom_theme.py ${DOTFILES_PATH}/misc/languages/python/pudb/
    cp ~/.config/pudb/pudb.cfg ${DOTFILES_PATH}/misc/languages/python/pudb
  fi
  
  cp ~/.config/ipython/profile_default/ipython_config.py ${DOTFILES_PATH}/misc/languages/python/ipython/
  cp ~/.config/ipython/profile_default/startup/custom_prompt.py  ${DOTFILES_PATH}/misc/languages/python/ipython/
  cp ~/.config/ipython/profile_default/startup/customscheme.py  ${DOTFILES_PATH}/misc/languages/python/ipython/
}

function backup_c_files {
  cp ~/.config/gdb/init ${DOTFILES_PATH}/misc/languages/C/gdb/
}

function backup_zathura {
  cp ~/.config/zathura/zathurarc ${DOTFILES_PATH}/zathura/
}

function backup_sxhdkd {
  cp ~/.config/sxhkd/sxhkdrc ${DOTFILES_PATH}/sxhkd/
}

function backup_dunst {
  cp ~/.config/dunst/dunstrc ${DOTFILES_PATH}/dunst/
}

function backup_picom {
  cp ~/.config/picom/picom.conf ${DOTFILES_PATH}/picom/
}

function backup_xfiles {
  cp ~/.config/X11/Xmodmap ${DOTFILES_PATH}/X11/Xmodmap
  cp ~/.xprofile ${DOTFILES_PATH}/X11/xprofile
}

function backup_cron {
  sudo cp /var/spool/cron/duclos ${DOTFILES_PATH}/cron/crontab/
  sudo cp /var/spool/cron/root ${DOTFILES_PATH}/cron/crontab/
  rm -rf ${DOTFILES_PATH}/cron/scripts
  cp -r /home/duclos/.scripts/cron ${DOTFILES_PATH}/cron/scripts
  sudo chown -R duclos:duclos ${DOTFILES_PATH}/cron/crontab/
}

function main {
  backup_fish_shell
  backup_bash_shell
  backup_vim
  backup_tmux
  backup_bspwm
  backup_polybar
  backup_lemonbar
  backup_sxhdkd
  backup_python_files
  backup_c_files
  backup_zathura
  backup_dunst
  backup_picom
  backup_xfiles
  backup_cron
}

main
