#!/usr/bin/bash

target="$1"
mkdir -p "~/.config/${target}"
stow -v "${target}" -t "~/.config/${target}"


