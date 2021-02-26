function __cf_utils_path_parse -d "CWD path prompt."
  set -l cnt (echo (prompt_pwd) | grep '/' -o | wc -l)
  set cnt (math $cnt + 1)
  set -g C_PATH_PROMPT_FORMATTED (printf '%s ' (echo (prompt_pwd) | cut -d '/' -f$cnt))
end
