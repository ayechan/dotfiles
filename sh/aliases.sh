#!/bin/sh

## Alias configuration
#
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

function mcd() {
  mkdir -p "$1" && cd "$1";
}

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias freq='cut -f1 -d" " $HISTFILE | sort | uniq -c | sort -nr | head -n 30'
alias sudolast='sudo !!'
alias pst='pstree -p'
alias pybrew='pythonbrew'

function cd() {
  builtin cd $@
  pwd
}

case "${OSTYPE}" in
  linux*|cygwin*|msys*)
    LS_DEFAULT_OPTION="-F --color=auto"
    ;;
  freebsd*|darwin*)
    LS_DEFAULT_OPTION='-GwF'
    ;;
esac
alias l.="ls -d .* ${LS_DEFAULT_OPTION}"
alias l="ls -lAh ${LS_DEFAULT_OPTION}"
alias ls="ls ${LS_DEFAULT_OPTION}"

case "${OSTYPE}" in
  linux*)
    alias open='xdg-open'
    ;;
  cygwin)
    alias ls='ls -hF --color=auto --hide="\$RECYCLE.BIN" --hide="System Volume Information" --hide="ntuser.*" --hide="NTUSER.*"'  
    alias open='cygstart'
    if [ ! -z "$GVIM_PATH" ]; then
      GVIM_PATH_UNIX=`cygpath -au "$GVIM_PATH"`
      if [ -f "$GVIM_PATH_UNIX" ]; then
        function vim {
          "$GVIM_PATH_UNIX" --remote-tab-silent $(cygpath -aw $*) 
        }
      fi
    fi
    ;;
  freebsd*)
    ;;
  darwin*)
    GLS_DEFAULT_OPTION="-F --color=auto"
    alias gls="gls $GLS_DEFAULT_OPTION"

    MVIMPATH=/Applications/MacVim.app/Contents/MacOS/mvim
    if [ -f $MVIMPATH ]; then
      alias mvim='$MVIMPATH'
    fi

    CVIMPATH=/Applications/MacVim.app/Contents/MacOS/Vim
    if [ -f $CVIMPATH ]; then
      alias cvim='$CVIMPATH'
      alias vim='$CVIMPATH'
    fi

    SUBLPATH=/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl
    if [ -f "$SUBLPATH" ]; then
      alias subl='$SUBLPATH'
    fi
    ;;
esac

