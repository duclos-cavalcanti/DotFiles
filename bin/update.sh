#!/usr/bin/env bash

DOTFILES_PATH=~/Documents/dotfiles

function backup_fish_shell {
    cp -r ~/.config/fish/* ${DOTFILES_PATH}/shells/fish/
}

function backup_bash_shell {
    cp ~/.config/bash/bashrc ${DOTFILES_PATH}/shells/bash/
    cp ~/.scripts/tlbx/*sh ${DOTFILES_PATH}/scripts/toolbox/
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
    cp -r ~/.config/tmux/scripts ${DOTFILES_PATH}/tmux/
}

function backup_polybar {
    cp ~/.config/polybar/config.ini ${DOTFILES_PATH}/bars/polybar/
    cp ~/.config/polybar/*.ini ${DOTFILES_PATH}/bars/polybar/
    cp -r ~/.config/polybar/modules/ ${DOTFILES_PATH}/bars/polybar/
    cp -r ~/.config/polybar/custom_modules/ ${DOTFILES_PATH}/bars/polybar/
    cp -r ~/.config/polybar/scripts ${DOTFILES_PATH}/bars/polybar/
    cp ~/.config/polybar/launch.sh ${DOTFILES_PATH}/bars/polybar/
}

function backup_lemonbar {
    cp -r ~/.config/lemonbar ${DOTFILES_PATH}/bars/
}

function backup_bspwm {
    cp ~/.config/bspwm/bspwmrc ${DOTFILES_PATH}/bspwm/
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
    cp /home/duclos/.scripts/cron/*.sh ${DOTFILES_PATH}/cron/scripts
    sudo chown -R duclos:duclos ${DOTFILES_PATH}/cron/crontab/
}

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
