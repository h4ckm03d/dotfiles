#!/usr/bin/env zsh

echo "init zgen..."
git clone https://github.com/tarjoilija/zgen.git "$HOME/.zgen"

echo "init vim..."
vim '+PlugInstall' '+qall'
