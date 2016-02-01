# Upham ZSH Theme


# Git

ZSH_THEME_GIT_PROMPT_PREFIX=" at %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}·"


# Helper functions

function collapse_pwd {
	echo $(pwd | sed -e "s,^$HOME,~,");
}

function prompt_char {
	git branch >/dev/null 2>/dev/null && echo '± ' && return
	hg root >/dev/null 2>/dev/null && echo '☿ ' && return
	echo ''
}


# Prompt

PROMPT='
%{$fg[white]%}<%*>$reset_color%} %{$fg_bold[cyan]%}$(prompt_char)%{$reset_color%}%{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}$(git_prompt_info)
%{$fg[magenta]%}%n%{$reset_color%} %{$terminfo[bold]$fg[white]%}→ %{$reset_color%}'
