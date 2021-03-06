#______ _____ _____ _   _ 
#|  ___|_   _/  ___| | | |
#| |_    | | \ `--.| |_| |
#|  _|   | |  `--. \  _  |
#| |    _| |_/\__/ / | | |
#\_|    \___/\____/\_| |_/
#                  

# Start X at login
# if status --is-login
#   if test -z "$DISPLAY" -a $XDG_VTNR = 1
#     exec startx -- -keeptty
#   end
# end

# Colorscheme
fish_colorscheme

# Keybindings
fish_user_key_bindings

# Debug variable.
set -gx PS4 "+ "

# ENVIRONMENT VARIABLES
set -gx PATH $PATH /home/duclos/.local/bin/
set -gx PATH $PATH /home/duclos/.bin/

[ -f /.dockerenv ] || set -gx VIMINIT 'source $CUSTOM_VIMRC'

set -gx CUSTOM_VIMRC '/home/duclos/.config/vim/vimrc'

set -gx XDG_DATA_HOME '/home/duclos/.local/'
set -gx XDG_CACHE_HOME '/home/duclos/.cache/'
set -gx XDG_CONFIG_HOME '/home/duclos/.config/'
set -gx TERM 'xterm-256color'
set -gx GIT_CONFIG '/home/duclos/.config/git/config'
set -gx GTK2_RC_FILES '/home/duclos/.config/gtk-2.0/gtkrc-2.0'
set -gx QT_QPA_PLATFORMTHEME 'qt5ct'
set -gx QT_STYLE_OVERRIDE 'kvantum-dark'
set -gx IPYTHONDIR '/home/duclos/.config/ipython/'
set -gx CARGO_HOME '/home/duclos/.cache/cargo/'
set -gx HISTFILE '/home/duclos/.config/bash/bash_history'
set -gx GNUPGHOME '/home/duclos/.cache/gnupg/'
set -gx IPDB_CONFIG '/home/duclos/.config/ipdb/setup.cfg'
set -gx LESSHISTFILE -
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1
set -gx WINIT_HIDPI_FACTOR 1
set -gx WINIT_X11_SCALE_FACTOR 1

set -gx WM "bspwm"
set -gx EDITOR "vim"
set -gx VISUAL "vim"
set -gx GIT_EDITOR "vim"
set -gx DIFFPROG "vim"
set -gx PAGER "less"
set -gx READER "zathura"
set -gx BROWSER "firefox"

set -x BSPWM_PATH ~/.config/bspwm/scripts
set -x TMUX_PATH ~/.config/tmux/scripts
set -x TLBX_PATH ~/.scripts/tlbx
set -x CRON_PATH ~/.scripts/cron
set -x POLY_PATH ~/.config/polybar/scripts
set -x LEMON_PATH ~/.config/lemonbar/
set -gx CUSTOM_DMENU "dmenu_run -h 30 -l 5" 
set -gx CUSTOM_DMENU_PROMPT "dmenu -h 30 -l 5" 

# ALIASES / ABBRs
abbr l "ls"
abbr s "ls"
abbr la "ls -A"
abbr ls "ls"

abbr .. "cd .."

abbr untar "tar -xf"
abbr rmtar "rm *.tar*"
abbr rmzip "rm *.zip"

abbr gs "git status"
abbr gd "git diff"
abbr gba "git branch --all"
abbr gbd "git branch -d"
abbr gbD "git push --delete origin"
abbr greset "git reset --hard"

abbr vpn "/opt/cisco/anyconnect/bin/vpn"

abbr dockinfo "docker info"
abbr dockcreate "docker create -i --name <name> debian"
abbr dockimgs "docker images"
abbr dockls "docker ps -a"
abbr dockrun "docker run --name <name> -it -d <img>"
abbr dockrm "docker rm"
abbr dockexec "docker exec -it debian-docker /bin/bash"
abbr dockstart "docker start debian-docker"
abbr dockattach "docker attach"

abbr nmls "nmcli device wifi list"
abbr nmcon "nmcli device wifi connect"
abbr nmdel "nmcli device wifi delete"

abbr bc "bluetoothctl"
abbr bson "bluetoothctl scan on"
abbr bsoff "bluetoothctl scan off"

abbr bsh "bash --init-file /home/duclos/.config/bash/bashrc"

abbr pdb "python -m pdb"
abbr pd "ipdb3"

abbr gcc "gcc -Wall -g"
abbr gdb "gdb -nx -x /home/duclos/.config/gdb/init"
abbr armgdb "/usr/bin/arm-none-eabi-gdb -nx -x /home/duclos/.config/gdb/init"

abbr pacup "sudo pacman -Syu"
abbr packo "sudo pacman -Qdt"
abbr aur "sudo pacman -Qqm"

abbr t "tmux -2 -f ~/.config/tmux/tmux.conf"
abbr tn "tmux -2 -f ~/.config/tmux/tmux.conf new-session -t"
abbr tls "tmux ls"
abbr twls "tmux list-windows -t"
abbr tk "tmux kill-session -t"
abbr tka "tmux kill-server"
abbr tc "~/.config/tmux/scripts/tmux_create.sh"

abbr cF "vim ~/.config/fish/config.fish"
abbr cT "vim ~/.config/tmux/tmux.conf"
abbr cFp "vim ~/.config/fish/functions/fish_prompt.fish"
abbr cFP "vim ~/.config/fish/functions/fish_right_prompt.fish"
abbr cV "vim ~/.config/vim/vimrc"
abbr cS "vim ~/.config/sxhkd/sxhkdrc"
abbr cW "vim ~/.config/bspwm/bspwmrc"
abbr cD "vim ~/.config/dunst/dunstrc"
abbr cP "vim ~/.config/picom/picom.conf"
abbr cB "vim ~/.config/polybar/config.ini"
abbr cZ "vim ~/.config/zathura/zathurarc"

abbr Mc "cmake .. && make"

function cd -a direc
  if [ -n "$direc" ]
	  builtin cd "$direc" && ls --color=auto --group-directories-first
  else
	  builtin cd ~ && ls --color=auto --group-directories-first
  end
end

# colored man pages
function man -a target
	env \
	  LESS_TERMCAP_mb=(tput bold; tput setaf 6) \
	  LESS_TERMCAP_md=(tput bold; tput setaf 6) \
	  LESS_TERMCAP_me=(tput sgr0) \
	  LESS_TERMCAP_se=(tput rmso; tput sgr0) \
	  LESS_TERMCAP_ue=(tput rmul; tput sgr0) \
	  LESS_TERMCAP_us=(tput smul; tput bold; tput setaf 4) \
	  LESS_TERMCAP_mr=(tput rev) \
	  LESS_TERMCAP_mh=(tput dim) \
	  LESS_TERMCAP_ZN=(tput ssubm) \
	  LESS_TERMCAP_ZV=(tput rsubm) \
	  LESS_TERMCAP_ZO=(tput ssupm) \
	  LESS_TERMCAP_ZW=(tput rsupm) \
	man "$target"
end
