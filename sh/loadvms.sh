
export PATH
if [ -f "$HOME/.rvm/scripts/rvm" ] ; then
  function load_rvm {
    echo "Loading rvm"
    source "$HOME/.rvm/scripts/rvm"
  }
fi
#
# NVM の読み込み
if [ -f "$HOME/.nvm/nvm.sh" ] ; then
  function load_nvm {
    echo "Loading nvm"
    source "$HOME/.nvm/nvm.sh"
  }
fi
#
# PythonBrew  の読み込み
if [ -f "$HOME/.pythonbrew/etc/bashrc" ] ; then
  function load_pybrew {
    echo "Loading pybrew"
    source "$HOME/.pythonbrew/etc/bashrc"
    echo "Loading virtualenvwrapper"
    export WORKON_HOME=$HOME/.virtualenvs
    source `which virtualenvwrapper.sh`
  }
fi

