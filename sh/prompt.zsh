#!/bin/zsh


autoload colors && colors
case ${UID} in
0)
  PROMPT2="%B%{${fg[red]}%}# %b"
  ;;
*)
  PROMPT2="%B%{${fg[blue]}%}$ %b"
  ;;
esac
RPROMPT="%{${fg[white]}%}%D{%Y-%m-%d(%a)} %*%{${reset_color}%}"
PROMPT="%B%{${fg[blue]}%}%~ $psvar[1] %b%{${fg[yellow]}%}[%n@%m]%{${reset_color}%}
$PROMPT2"

