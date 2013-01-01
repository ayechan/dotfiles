if [ -z "$PS1" ]; then return ; fi
echo "Loading .zshrc"

source ~/dotfiles/sh/prompt.zsh
source ~/dotfiles/sh/settings.zsh
source ~/dotfiles/sh/keymappings.zsh
source ~/dotfiles/sh/aliases.sh
