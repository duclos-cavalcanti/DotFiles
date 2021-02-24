function __cf_status_value -d "Write out the right prompt"

    # set -l C_STATUS_COLOR 
    # set -l C_STATUS_PREFIX "Exit "
    # set -l C_STATUS_BRANCH ""

    set last_status $status

    if test $last_status != 0
        # __cf_utils_print $C_GIT_PREFIX $C_GIT_PROMPT_FORMATTED $C_GIT_COLOR
        set -g LAST_STATUS $last_status
    else
        set -g LAST_STATUS 0
    end

    set_color normal
end



