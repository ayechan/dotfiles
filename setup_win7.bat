REM This folder needs to be placed on %HOME%\dotfiles .
REM ToDo: Follow this folder

mklink %HOME%\.vimrc %HOME%\dotfiles\vim\vimrc.vim
mklink %HOME%\.gvimrc %HOME%\dotfiles\vim\gvimrc.vim
mklink %HOME%\.zshrc %HOME%\dotfiles\sh\zshrc.zsh
mklink %HOME%\.zshenv %HOME%\dotfiles\sh\zshenv.zsh
mklink %HOME%\.inputrc %HOME%\dotfiles\rcfiles\.inputrc
mklink %HOME%\.bash_profile %HOME%\dotfiles\sh\bash_profile.bash
mklink %HOME%\.bashrc %HOME%\dotfiles\sh\bashrc.bash
