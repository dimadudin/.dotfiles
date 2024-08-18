#!/usr/bin/env bash

# Programming languages
pacman -S --noconfirm python lua nodejs rust go
# Package managers
pacman -S --noconfirm python-pip luarocks npm
# PL-specific tooling
pacman -S --noconfirm python-debugpy delve go-tools
# CLI tools
pacman -S --noconfirm man unzip fd ripgrep fzf jq stow pass
# Daemons
pacman -S --noconfirm keyd
cat ./keyd.conf > /etc/keyd/default.conf
systemctl enable keyd
# Fonts
pacman -S --noconfirm ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols noto-fonts-cjk noto-fonts-emoji
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
