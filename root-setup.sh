#!/usr/bin/env bash

# Python
pacman -S --noconfirm python python-pip python-debugpy
# Lua
pacman -S --noconfirm lua luarocks nodejs
# Node.js
pacman -S --noconfirm nodejs npm
# Go
pacman -S --noconfirm go go-tools delve
# Rust
pacman -S --noconfirm rust
# CLI tools
pacman -S --noconfirm man-db unzip fd ripgrep fzf jq stow pass
# Daemons
pacman -S --noconfirm keyd
# Fonts
pacman -S --noconfirm ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols \
    noto-fonts-cjk noto-fonts-emoji
# ZSH
pacman -S --noconfirm zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting
git clone https://github.com/Aloxaf/fzf-tab /usr/share/zsh/plugins/fzf-tab
# Alacritty
pacman -S --noconfirm alacritty
# Tmux
pacman -S --noconfirm tmux
# Neovim
pacman -S --noconfirm python-pynvim neovim
# Qutebrowser
pacman -S --noconfirm python-adblock qutebrowser
# Sway
pacman -S --noconfirm i3status j4-dmenu-desktop

# Privileged setup
stow --dir="$HOME/personal/.dotfiles/root" --target="/" --no-folding .
systemctl enable keyd
