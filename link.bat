@rem clean
del %HOME%\_vimrc %HOME%\_gvimrc
@rem delete %HOME%\vim

@set DF_DIR=%HOME%\dotfiles

@rem link
mklink %HOME%\_vimrc %DF_DIR%\vim\.vimrc
mklink %HOME%\_gvimrc %DF_DIR%\vim\.gvimrc

pause

