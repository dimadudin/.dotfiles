# .dotfiles

Config files for OmarchyOS

## Installation

Install (zsh, tmux, pass, stow, qutebrowser) using the Omarchy menu.
Install [the theme](https://github.com/sc0ttman/omarchy-one-dark-pro-theme.git) using the Omarchy menu.
Install (zsh-autosuggestions, zsh-syntax-highlighting, python-adblock) using the Omarchy menu.
Sign into github.
Generate SHH keys: [gh docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
Link SSH keys: [gh docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
Install (fzf-tab) using the git repo link:

```bash
git clone https://github.com/Aloxaf/fzf-tab /usr/share/zsh/plugins
```

Import gpg keys ([yt tutorial](https://www.youtube.com/watch?v=FhwsfH2TpFA))([pass docs](https://www.passwordstore.org)).
Make zsh the default shell:

```bash
chsh -s $(which zsh)
```

Create Public/ and Work/ dirs in $HOME:

```bash
mkdir $HOME/Public $HOME/Work
```

Clone the config files:

```bash
git clone git@github.com:dimadudin/.dotfiles.git $HOME/Public/.dotfiles
```
