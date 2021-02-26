function fish_prompt
  __cf_utils_set_status

  set -l PROMPT_ORDER path git pyenv char

  __cf_user_prompt
  __cf_path_prompt
  __cf_git_prompt
  __cf_pyenv_prompt
  __cf_char_prompt

  set_color normal 
end
