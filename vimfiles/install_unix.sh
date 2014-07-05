#!/usr/bin/env bash

## Link dictionay and files
ln -s `pwd` ~/.vim
ln -s `pwd`/vim ~/.vimrc 

## Install Neobundle
mkdir ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

## Install all plugins
vim +NeoBundleInstall +qall

## make vimproc
cd ~/.vim/bundle/vimproc.vim && make
