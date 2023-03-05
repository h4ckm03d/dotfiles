mkdir -p ~/.config/{nvim,tmux,fish}

# setup nvim
stow -v nvim -t ~/.config/nvim

# setup tmux
stow -v tmux -t ~/.config/tmux

# setup fish shell
stow -v fish -t ~/.config/fish

