# .dotfiles

These are my config files.

## Installation

Get the SSH keys for github.
Create personal/ and work/ dirs in the home directory.
Install git, clone the repo create symlinks.

```bash
pacman -S git && \
git clone git@github.com:dimadudin/.dotfiles.git $HOME/personal/.dotfiles && \
pacman -S stow && \
stow --dir="$HOME/personal/.dotfiles" --target="$HOME" .
```
