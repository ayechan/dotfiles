
# インタラクティブシェルではないなら実行しない
if [ -z "$PS1" ]; then return ; fi

echo "Loading .bash_profile"

# tmux が使えるなら tmux を利用
if [ -z `which tmux` ] && [ -z $TMUX ] ; then
  # セッションが残っているなら復元
  if [ -z `tmux ls` ] ; then
    exec tmux
  else
    exec tmux attach
  fi
else
  source ~/dotfiles/sh/prompt.bash
  source ~/dotfiles/sh/keymappings.bash
  source ~/dotfiles/sh/settings.bash
  source ~/dotfiles/sh/env.sh
  source ~/dotfiles/sh/aliases.sh
  source ~/dotfiles/sh/loadvms.sh
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi



#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
