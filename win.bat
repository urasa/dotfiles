@echo off

set DF_DIR=%HOME%\dotfiles
set LINK_FILES=.gitconfig .global_ignore .vimrc .gvimrc .conkyrc .Xmodmap .tmux.conf
set LINK_DIRS=.vim
set LINK_TARGET=git vim

rem mode selection
if "%1" == "" call :usage
if "%1" == "init" call :init
if "%1" == "link" call :link
if "%1" == "clean" call :clean
exit /b

rem ---------- subroutines ----------
:usage
echo win [init link clean]
exit /b

:init
echo update submodules 
git submodule init
git submodule update
echo updated. please build the submodules.
exit /b

:link
for %%i in (%LINK_TARGET%) do (
    echo link %%i
    if "%%i" == "git" call :git
    if "%%i" == "vim" call :vim
    if "%%i" == "conky" call :conky
    if "%%i" == "xmodmap" call :xmodmap
    if "%%i" == "tmux" call :tmux
)
exit /b

:clean
pushd %HOME%
del /P %LINK_FILES%
rmdir %LINK_DIRS%
popd
exit /b

rem ----------- link rules -----------
:git
mklink %HOME%\.gitconfig %DF_DIR%\git\gitconfig
mklink %HOME%\.global_ignore %DF_DIR%\git\global_ignore
exit /b

:vim
mklink %HOME%\.vimrc %DF_DIR%\vim\.vimrc
mklink %HOME%\.gvimrc %DF_DIR%\vim\.gvimrc
mklink /D %HOME%\.vim %DF_DIR%\vim
exit /b

:conky
:xmodmap
:tmux
echo stab: link conky, xmodmap, tmux
exit /b
