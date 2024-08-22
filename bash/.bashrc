#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# I am very lazy so here are some very short aliases
alias v='nvim'
alias nf='neofetch'

# Not currently using a vm
# alias vm='sudo virsh net-start default'

# tmux is interesting however a bit hacky
# alias tmux="TERM=screen-256color-bce tmux"

# Rust env
PS1='[\u@\h \W]\$ '
# PS1='$ '
. "$HOME/.cargo/env"

# Starship
eval "$(starship init bash)"

# Dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
