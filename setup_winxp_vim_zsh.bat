REM This folder needs to be placed on %HOME%\dotfiles .

fsutil hardlink create %HOME%\.vimrc %HOME%\dotfiles\vim\vimrc.vim
fsutil hardlink create %HOME%\.gvimrc %HOME%\dotfiles\vim\gvimrc.vim
fsutil hardlink create %HOME%\.zshrc %HOME%\dotfiles\sh\zshrc.zsh
fsutil hardlink create %HOME%\.zshenv %HOME%\dotfiles\sh\zshenv.zsh
