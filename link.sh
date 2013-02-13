#!/bin/sh
cd ~
## vim
[ -e .vimrc  ] && mv .vimrc .vimrc.bak
[ -e .gvimrc ] && mv .gvimrc .gvimrc.bak
[ -e .vim    ] && rm .vim
ln -v -s dotfiles/vim/.vimrc .vimrc
ln -v -s dotfiles/vim/.gvimrc .gvimrc
ln -v -s dotfiles/vim .vim

## git
[ -e .gitconfig     ] && mv .gitconfig .gitconfig.bak
[ -e .global_ignore ] && mv .global_ignore .global_ignore.bak
ln -v -s dotfiles/git/gitconfig .gitconfig
ln -v -s dotfiles/git/global_ignore .global_ignore

