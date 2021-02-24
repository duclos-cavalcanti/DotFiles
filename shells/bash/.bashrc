#______  ___   _____ _   _ 
#| ___ \/ _ \ /  ___| | | |
#| |_/ / /_\ \\ `--.| |_| |
#| ___ \  _  | `--. \  _  |
#| |_/ / | | |/\__/ / | | |
#\____/\_| |_/\____/\_| |_/
#                          

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion


#Sets Prompt to simple Current Directory in Green
PS1='\[\033[01;37m\]$(pwd) -> '

#Basic Aliases
alias cp="cp -i"                          # confirm before overwriting something
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'


#Sourcing fzf keybindings
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
