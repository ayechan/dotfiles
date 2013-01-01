# インタラクティブシェルではないなら実行しない
if [ -z "$PS1" ]; then return ; fi

source /etc/bashrc
source ~/dotfiles/sh/env.sh
source ~/dotfiles/sh/aliases.sh
source ~/dotfiles/sh/prompt.bash
source ~/dotfiles/sh/loadvms.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [ -e ~/.bashrc.local ]; then
  source ~/.bashrc.local
fi

