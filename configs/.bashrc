#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
source ~/.config/.bashaliases

# Rust env
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

# Starship
eval "$(starship init bash)"
