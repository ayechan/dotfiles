#!/bin/bash

# インタラクティブシェルではないなら実行しない
if [ -z "$PS1" ]; then return ; fi

source $HOME/dotfiles/sh/prompt.bash
source $HOME/dotfiles/sh/keymappings.bash
source $HOME/dotfiles/sh/settings.bash
source $HOME/dotfiles/sh/aliases.sh
source $HOME/dotfiles/sh/loadvms.sh

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [ -e $HOME/.bashrc.local ]; then
  source $HOME/.bashrc.local
fi

