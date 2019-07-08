autoload -Uz colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats "%{$fg[magenta]%}(%b)%{$reset_color%} "

precmd() {
  vcs_info
}

function prompt_separator() {
  local RETVAL=$?
  local SEPARATOR="•|•"
  local SEPARATOR_PREFIX="%{$fg[green]%}"

  if [ $RETVAL -ne 0 ]; then
    SEPARATOR="•/•"
    SEPARATOR_PREFIX="%{$fg[red]%}"
  fi

  local SEPARATOR_SUFFIX="${SEPARATOR}%{$reset_color%}"

  echo "${SEPARATOR_PREFIX}${SEPARATOR_SUFFIX}"
}

setopt prompt_subst
PROMPT='%D{%H:%M} %c ${vcs_info_msg_0_}$(prompt_separator) '

