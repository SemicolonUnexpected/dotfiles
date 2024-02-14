#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
source ~/.config/shell/aliases
source ~/.config/shell/git-aliases

# Rust env
PS1='[\u@\h \W]\$ '
# PS1='$ '
. "$HOME/.cargo/env"

# Starship
eval "$(starship init bash)"

# Dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
