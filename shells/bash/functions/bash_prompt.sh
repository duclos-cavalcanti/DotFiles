#!/bin/bash
#
# Main function that calls on all modules necessary for the bash prompt

function bash_prompt {
  . $HOME/.config/bash/functions/__cb_char_prompt.sh
  . $HOME/.config/bash/functions/__cb_git_prompt.sh
  . $HOME/.config/bash/functions/__cb_path_prompt.sh
  . $HOME/.config/bash/functions/__cb_pyenv_prompt.sh

  declare -a prompt_order
  prompt_order=(path git pyenv)
  prompt=""

  for module in "${prompt_order[@]}"; do
    tmp="__cb_${module}_prompt"
    prompt+=$(eval $tmp)
  done

  echo "${prompt}\[\033[00m\]"
}
