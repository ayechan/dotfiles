## Alias configuration
#
alias pst='pstree -p'
alias pybrew='pythonbrew'

case "${OSTYPE}" in
  cygwin)
    alias ls='ls -hF --color=tty --hide="\$RECYCLE.BIN" --hide="System Volume Information" --hide="ntuser.*" --hide="NTUSER.*"'  
    alias open='cygstart'
    ;;
  freebsd*)
    alias ls="ls -G -w"
    ;;
  darwin*)
    alias ls="ls -G -w"
    MVIMPATH=/Applications/MacVim.app/Contents/MacOS/mvim
    CVIMPATH=/Applications/MacVim.app/Contents/MacOS/Vim
    SUBLPATH=/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl
    if [ -f $MVIMPATH ]; then
      alias mvim='$MVIMPATH'
    fi
    if [ -f $CVIMPATH ]; then
      alias cvim='$CVIMPATH'
    fi
    if [ -f $SUBLPATH ]; then
      alias subl='$SUBLPATH'
    fi
    ;;
  linux*)
    alias ls="ls --color"
    ;;
esac

function cd() { builtin cd $@ && pwd && ls;}
