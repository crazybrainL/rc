#!/usr/bin/env bash

## Link dictionay and files
RCHOME=~/Documents/rc

if [[ ! -e $RCHOME ]]; then
    git clone https://github.com/whlin/rc $RCHOME 
fi

PATHS=(`pwd`/screenrc `pwd`/gitconfig)
LINKS=(~/.screenrc ~/.gitconfig)

FILES=(screenrc gitconfig)

tLen=${#FILES[@]}

for (( i=0; i<${tLen}; i++ ));
do
    if [[ -e $HOME/.${FILES[$i]} ]]; then
        echo "rm $HOME/.${FILES[$i]}"
        rm $HOME/.${FILES[$i]}
    else
        echo "$HOME/.${FILES[$i]} doesn't exist"
    fi
    echo "ln -s $RCHOME/${FILES[$i]} $HOME/.${FILES[$i]}"
    ln -s $RCHOME/${FILES[$i]} $HOME/.${FILES[$i]}
done

