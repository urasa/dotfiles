@rem clean

@if exist %HOME%\.vimrc  del %HOME%\.vimrc
@if exist %HOME%\.gvimrc del %HOME%\.gvimrc
@if exist %HOME%\.vim    rmdir %HOME%\.vim

@set DF_DIR=%HOME%\dotfiles

@rem link
mklink %HOME%\.vimrc %DF_DIR%\vim\.vimrc
mklink %HOME%\.gvimrc %DF_DIR%\vim\.gvimrc

mklink /D %HOME%\.vim %DF_DIR%\vim
pause

