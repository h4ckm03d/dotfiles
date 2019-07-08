source $HOME/.zgen/zgen.zsh

if ! zgen saved; then
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-history-substring-search
  zgen load zsh-users/zsh-completions src
  zgen save
fi

# highlights
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# key bindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

