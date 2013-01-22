#!/bin/sh
cd ~
[-e .vimrc] && mv .vimrc .vimrc.bak
[-e .gvimrc] && mv .gvimrc .gvimrc.bak
[-e .vim] && rm .vim
ln -v -s dotfiles/vim/.vimrc .vimrc
ln -v -s dotfiles/vim/.gvimrc .gvimrc
ln -v -s dotfiles/vim .vim

