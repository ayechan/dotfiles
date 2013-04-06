
# インタラクティブシェルではないなら実行しない
if [ -z "$PS1" ]; then return ; fi

echo "Loading .bash_profile"

# tmux が使えるなら tmux を利用
if type "tmux" >/dev/null 2>&1 ; then
  # セッションが残っているなら復元
  if [ -z `tmux ls` ] ; then
    exec tmux
  else
    exec tmux attach
  fi
else
  source $HOME/dotfiles/sh/prompt.bash
  source $HOME/dotfiles/sh/keymappings.bash
  source $HOME/dotfiles/sh/settings.bash
  source $HOME/dotfiles/sh/env.sh
  source $HOME/dotfiles/sh/aliases.sh
  source $HOME/dotfiles/sh/loadvms.sh
  # Load local file if exists
  if [ -f $HOME/.bash_profile.local ]; then
    source $HOME/.bash_profile.local
  fi
  if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
  fi
fi



#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
