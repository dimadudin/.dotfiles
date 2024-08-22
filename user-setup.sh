#!/usr/bin/env bash

stow --dir="$HOME/personal/.dotfiles/home" --target="$HOME" --no-folding .
chsh -s /usr/bin/zsh
