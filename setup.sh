#!/usr/bin/bash

target="$1"
mkdir -p "$HOME/.config/${target}"
stow -v "${target}" -t "$HOME/.config/${target}"


