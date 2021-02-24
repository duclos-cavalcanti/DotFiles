function fish_prompt
    __cf_status_value

    set -l PROMPT_ORDER path git pyenv docker char

	for i in $PROMPT_ORDER
		eval "__cf_"$i"_prompt"
	end

    set_color normal 
end
