# .dotfiles

Configuration files for Omarchy

## Generating SSH keys

```bash
ssh-keygen -t ed25519 -C "<email>"
Enter file in which to save the key ($HOME/.ssh/id_ed25519): <path>/<key name>
Enter passphrase for "<key name>" (empty for no passphrase):
Enter same passphrase again:
```

## Adding key to ssh-agent

```bash
ssh-add <path>/<key name>
```

## Adding key to github

See: [github docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

## Installation

```bash
git clone git@github.com:dimadudin/.dotfiles.git $HOME/Public/.dotfiles
```

Install stow with omarchy menu

Create symlinks:

```bash
stow --dir="$HOME/Public/.dotfiles" --target="$HOME" --no-folding --adopt .
git restore .
```

## Post installation

### zsh

Install omarchy-zsh and run

```bash
omarchy-setup-zsh
```

### pass

TODO: look [into](https://github.com/basecamp/omarchy/issues/2510)
Install pass with omarchy menu

Fetch gpg keys and install password store [docs](https://www.passwordstore.org)

### qutebrowser

Install qutebrowser and python-adblock dependency with omarchy menu

### Misc

Install relevant dev envs with omarchy menu
(most dev envs require a pkg to work with neovim)

Install relevant LazyExtras in neovim

Make sure to --version and :checkhealth
