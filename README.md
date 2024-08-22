# .dotfiles

Config files for Archlinux

## Installation

Get the SSH keys for github. Don't forget to chown and chmod.
Create personal/ and work/ dirs in the home directory.

Install git, clone the repo:

```bash
pacman -S git
git clone git@github.com:dimadudin/.dotfiles.git $HOME/personal/.dotfiles
```

Run the root-setup.sh script:

```bash
sudo $HOME/personal/.dotfiles/root-setup.sh
```

Run the user-setup.sh script:

```bash
sudo $HOME/personal/.dotfiles/user-setup.sh
```
