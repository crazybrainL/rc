#!/usr/bin/env bash

## Link dictionay and files
rm ~/.screenrc | ln -s `pwd`/screenrc ~/.screenrc 
rm ~/.gitconfig | ln -s `pwd`/gitconfig ~/.gitconfig
