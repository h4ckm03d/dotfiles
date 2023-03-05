if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end


function ide
  tmux split-window -v -p 30
  tmux split-window -h -p 66
  tmux split-window -h -p 50
end

# env mac
set -g VOLTA_HOME "$HOME/.volta"
fish_add_path "$VOLTA_HOME/bin"
fish_add_path "$HOME/.cargo/bin"
