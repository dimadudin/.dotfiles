# Force gpg to use tui for pinentry
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

# Keybinds
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

zle_highlight+=(paste:none)

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Aliases
alias ls='ls -al --group-directories-firs --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'

# Completion
autoload -Uz compinit; compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Prompt
autoload -Uz promptinit; promptinit
reset_prompt(){
  path_prompt='%F{#555555}%~%f '
  git_promt=''
  if branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null); then
    status_color='#789978'
    if [[ -n $(git status --porcelain 2>/dev/null) ]]; then
       status_color='#ffaa88'
    fi
    head_status="[$branch]"
    if [[ "$branch" == "HEAD" ]]; then
      head_status="@$(git rev-parse --short HEAD 2>/dev/null)"
    fi
    git_promt="%F{$status_color}${head_status}%f "
  fi
  prompt_sign='%F{#dddddd}%#%f '
  return 0
}
setopt prompt_subst
autoload -U add-zsh-hook
add-zsh-hook precmd reset_prompt
PROMPT='${path_prompt}${git_promt}${prompt_sign}'

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
eval "$(fzf --zsh)"
