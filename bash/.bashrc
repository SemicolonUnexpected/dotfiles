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
alias nf='fastfetch'
# alias freeshow='hyprctl dispatch exec "./FreeShow-1.3.0-x86_64.AppImage"'
# alias freesho='hyprctl dispatch exec "./FreeShow-1.3.0-x86_64.AppImage --ozone-platform=wayland"'
# alias start-su='./repos/su-setup/setup.sh'

# Not currently using a vm
# alias vm='sudo virsh net-start default'

# tmux is interesting however a bit hacky
# alias tmux="TERM=screen-256color-bce tmux"

# Rust env
# PS1='[\u@\h \W]\$ '
# PS1='$ '
# . "$HOME/.cargo/env"

# Starship
eval "$(starship init bash)"

# Dotnet
# export DOTNET_ROOT=/usr/share/dotnet
export TOKEN="$(cat ~/keys/token)"
# export PICO_SDK_PATH=$HOME/pico/pico-sdk

# Vim as manpager
export MANPAGER='sh -c "col -bx | vim -R -c \"set ft=man nomod nolist nonu\" -c \"runtime! macros/less.vim\" -"'
