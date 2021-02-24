function fish_colorscheme -d "Sets the highlight groups for my fish shell."
    set -g fish_term24bit 1
    
    # Default
    set fish_color_normal ffffff

    # Errors
    set fish_color_error fb4934

    #For Commmands (Correct Ones)
    set fish_color_command 00bcd4

    # For Cancel with Ctrl C
    set fish_color_cancel ffffff

    # The Arguments to Commands
    set fish_color_param ffffff

    # AutoSuggestions
    # set fish_color_autosuggestion 5f5f5f
    set fish_color_autosuggestion 7c818c

    # IO Redirections color
    set fish_color_end d400bc

    # Words in quotations
    set fish_color_quote 4db6ac

    # Directory Shown in Prompt Color
    set fish_color_cwd ffffff
    
    # Color of things like ~ and *
    set fish_color_operator d400bc
    
    # Color of the options to be completed
    set fish_pager_color_completion ffffff

    # Background of completion options
    set fish_color_search_match ffffff --background=00bcd4
    
    # Color of the Completion Description
    set fish_pager_color_description 00bcd4

    # Color of the prefix string / AKA to be completed
    set fish_pager_color_prefix ffffff 

    # Color of the pager description
    set fish_pager_color_description 00bcd4
end
