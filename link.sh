#!/bin/sh

cd ~
mv .vimrc .vimrc.bak
mv .gvimrc .gvimrc.bak
rm .vim
ln -v --symbolic dotfiles/vim/.vimrc .vimrc
ln -v --symbolic dotfiles/vim/.gvimrc .gvimrc
ln -v --symbolic --directory dotfiles/vim .vim

