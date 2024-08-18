typeset -U path
path=("$HOME/.local/bin" $path)
path+=("$(go env GOBIN)")
path+=("$(go env GOPATH)/bin")

path+=("$HOME/.dotnet/tools")
export DOTNET_CLI_TELEMETRY_OPTOUT=1

export XDG_CONFIG_HOME=$HOME/.config

export EDITOR=nvim
export VISUAL=nvim
export PAGER="nvim +Man!"
export MANPAGER="nvim +Man!"

export MANWIDTH=999

export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_DEFAULT_OPTS='--color=bw --reverse'
