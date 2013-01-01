
# インタラクティブシェルではないなら実行しない
if [ -z "$PS1" ]; then return ; fi

echo "Loading $0"

# tmux が使えるなら tmux を利用
if [ -z $TMUX ] ; then
  # セッションが残っているなら復元
  if [ -z `tmux ls` ] ; then
    exec tmux
  else
    exec tmux attach
  fi
else
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi



#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
