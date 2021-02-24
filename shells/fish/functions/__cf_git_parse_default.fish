function __cf_git_parse_default -d "Initial parsing of the fish_git_prompt."
    set -l temp_var ""
    set -l NO_GIT 0

    if [ -z "$fish_git_prompt" ]
        set NO_GIT 1
    end

    if [ $NO_GIT -eq 1 ]
        set temp_var (printf '%s ' (fish_git_prompt))
        set temp_var (string split -m 1 '(' $temp_var)
        set temp_var (string split -m 1 -r ')' $temp_var)
        set temp_var (string trim --right "$temp_var")
    end

    set -g C_GIT_PROMPT $temp_var
end
