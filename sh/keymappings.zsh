bindkey -e
autoload -Uz compinit
compinit
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^N" history-beginning-search-forward-end
bindkey "^P" history-beginning-search-backward-end
bindkey '^[[Z' reverse-menu-complete
zstyle ':completion:*:default' menu select=1

