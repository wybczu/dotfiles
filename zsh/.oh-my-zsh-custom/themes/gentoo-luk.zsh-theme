function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%}%n@)%m %{$fg[blue]%}%(!.%1~.%~) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '

RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
