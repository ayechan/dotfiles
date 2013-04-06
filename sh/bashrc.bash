# インタラクティブシェルではないなら実行しない
if [ -z "$PS1" ]; then return ; fi


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [ -e ~/.bashrc.local ]; then
  source ~/.bashrc.local
fi

