@rem clean
del %HOME%\_vimrc %HOME%\_gvimrc
rmdir %HOME%\.vim

@set DF_DIR=%HOME%\dotfiles

@rem link
mklink %HOME%\_vimrc %DF_DIR%\vim\.vimrc
mklink %HOME%\_gvimrc %DF_DIR%\vim\.gvimrc

mklink /D %HOME%\.vim %DF_DIR%\vim
pause

