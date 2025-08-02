#
# ~/.bash_profile
#

#[[ -f ~/.bashrc ]] && . ~/.bashrc
#. "$HOME/.cargo/env"


# Dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

