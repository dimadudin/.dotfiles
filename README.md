# .dotfiles

Configuration files for Omarchy

## Installation

Create Public/ and Work/ dirs in $HOME:

```bash
mkdir $HOME/Public $HOME/Work
```

Sign into github. Generate and link SHH keys: [gh docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
Clone repo:

```bash
git clone git@github.com:dimadudin/.dotfiles.git $HOME/Public/.dotfiles
```

Create symlinks:

```bash
stow --dir="$HOME/personal/.dotfiles" --target="$HOME" --no-folding --adopt .
git restore .
```

Install (zsh, tmux, pass, stow, qutebrowser)(omarchy menu).

Make zsh the default shell:

```bash
chsh -s $(which zsh)
```

Install (zsh-autosuggestions, zsh-syntax-highlighting, python-adblock)(omarchy menu).

Install (fzf-tab) using the git repo link:

```bash
git clone https://github.com/Aloxaf/fzf-tab /usr/share/zsh/plugins/fzf-tab
```

Install [the theme](https://github.com/sc0ttman/omarchy-one-dark-pro-theme.git)(omarchy menu).

Install relevant dev envs(omarchy menu).

Install relevant LazyExtras in neovim.
