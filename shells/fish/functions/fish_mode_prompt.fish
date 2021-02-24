function fish_mode_prompt
    set VI_PROMPT ''
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        switch $fish_bind_mode
            case default
                set VI_PROMPT '[N]'
            case insert
                set VI_PROMPT '[I]'
            case replace_one
                set VI_PROMPT '[R]'
            case replace
                set VI_PROMPT '[R]'
            case visual
                set VI_PROMPT '[V]'
        end
        set -g VI_PROMPT "$VI_PROMPT"
    end
end
