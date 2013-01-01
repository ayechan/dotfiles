if [ -z "$PS1" ]; then return ; fi
echo "Loading .zshenv"
typeset -U path cdpath fpath manpath

source ~/dotfiles/sh/env.sh
source ~/dotfiles/sh/loadvms.sh

if [ -e ~/.zshenv.local ]; then
  source ~/.zshenv.local
fi


