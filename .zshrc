export ZSH_DIR="$HOME/.zsh"
export ZSH_OSRC="$ZSH_DIR/zsh-$(uname -s).zsh"

source $ZSH_DIR/zgen.zsh
source $ZSH_DIR/zsh-history.zsh
source $ZSH_DIR/zsh-prompt.zsh
source $ZSH_DIR/zsh-options.zsh

typeset -U path

path=(
  "$HOME/bin"
  "$HOME/go/bin"
  "$HOME/.npm/bin"
  "$HOME/.gem/bin"
  "/opt/local/bin"
  "/opt/local/sbin"
  $path
)

if [ -f "$ZSH_OSRC" ]; then
  source "$ZSH_OSRC"
fi

export DIRENV_LOG_FORMAT=
eval "$(direnv hook zsh)"

if [ -f "${HOME}/.zshrc_local" ]; then
  source $HOME/.zshrc_local
fi

