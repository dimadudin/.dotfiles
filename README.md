# .dotfiles

These are my config files.

## Installation

Get the SSH keys for github. Don't forget to chown and chmod.
Create personal/ and work/ dirs in the home directory.

Install git, clone the repo:

```bash
pacman -S git
git clone git@github.com:dimadudin/.dotfiles.git $HOME/personal/.dotfiles
```

Run the install.sh script:

```bash
sudo $HOME/personal/.dotfiles/install.sh
```

Stow the config into the home directory:

```bash
stow --dir="$HOME/personal/.dotfiles" --target="$HOME" .
```

Change the default shell to zsh:

```bash
chsh -s /usr/bin/zsh
```
