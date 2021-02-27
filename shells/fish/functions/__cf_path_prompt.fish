function __cf_path_prompt -d "CWD path prompt."
  __cf_utils_path_parse

  set -l C_PATH_PROMPT "$C_PATH_PROMPT_FORMATTED"
  set -l C_PATH_COLOR fb4934
  set -l C_PATH_PREFIX "at "

  __cf_utils_print $C_PATH_PREFIX $C_PATH_PROMPT $C_PATH_COLOR
end
