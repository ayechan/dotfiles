REM This folder needs to be placed on %HOME%\dotfiles .

fsutil hardlink create %HOME%\.vimrc %HOME%\dotfiles\vim\vimrc.vim
fsutil hardlink create %HOME%\.gvimrc %HOME%\dotfiles\vim\gvimrc.vim
fsutil hardlink create %HOME%\.zshrc %HOME%\dotfiles\sh\zshrc.zsh
fsutil hardlink create %HOME%\.zprofile %HOME%\dotfiles\sh\zprofile.zsh
fsutil hardlink create %HOME%\.inputrc %HOME%\dotfiles\rcfiles\.inputrc
fsutil hardlink create %HOME%\.bash_profile %HOME%\dotfiles\sh\bash_profile.bash
fsutil hardlink create %HOME%\.bashrc %HOME%\dotfiles\sh\bashrc.bash
fsutil hardlink create %HOME%\.dir_colors %HOME%\dotfiles\sh\.dir_colors

