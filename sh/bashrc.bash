# インタラクティブシェルではないなら実行しない
if [ -z "$PS1" ]; then return ; fi


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [ -e $HOME/.bashrc.local ]; then
  source $HOME/.bashrc.local
fi

