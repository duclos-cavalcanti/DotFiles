function fish_user_key_bindings
    fish_default_key_bindings -M insert
	fzf_key_bindings

    bind -m insert \cn 'down-or-search'
    bind -m insert \cp 'up-or-search'
end



