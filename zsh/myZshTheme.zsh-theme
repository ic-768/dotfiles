# Yay! High voltage and arrows!

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[red]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="] %{$fg[blue]%}✖ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="] %{$fg[green]%}✔%{$reset_color%}"

PROMPT='%{$fg[cyan]%}%~ %{$fg[red]%}⇒ %{$reset_color%} '
RPROMPT='$(git_prompt_info)'
