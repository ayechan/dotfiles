if [ -z "$PS1" ]; then return ; fi
echo "Loading .zshrc"

source $HOME/dotfiles/sh/prompt.zsh
source $HOME/dotfiles/sh/settings.zsh
source $HOME/dotfiles/sh/keymappings.zsh
source $HOME/dotfiles/sh/aliases.sh
