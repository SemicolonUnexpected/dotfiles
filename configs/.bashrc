#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
source ~/.config/shell/aliases.sh
source ~/.config/shell/git-aliases.sh

# Rust env
PS1='[\u@\h \W]\$ '
# PS1='$ '
. "$HOME/.cargo/env"

# Starship
eval "$(starship init bash)"

# Dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
