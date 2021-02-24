function __cf_path_prompt -d "CWD path prompt."
    __cf_parse_path

    set -l C_PATH_PROMPT "$C_PATH_PROMPT_FORMATTED"
    set -l C_PATH_COLOR 00bcd4
    set -l C_PATH_PREFIX ""

    __cf_utils_print $C_PATH_PREFIX $C_PATH_PROMPT $C_PATH_COLOR
end
