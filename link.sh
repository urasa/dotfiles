#!/bin/sh

cd ~
mv .vimrc .vimrc.bak
rm .vim
ln -v --symbolic dotfiles/vim/.vimrc .vimrc
ln -v --symbolic --directory dotfiles/vim .vim

