#!/usr/bin/env bash

## Link dictionay and files
RC_HOME=~/Documents/rc_test

if [[ ! -e  $RC_HOME ]]; then
    git clone https://github.com/whlin/rc/install_unix.sh $RC_HOME 
fi

PATHS=(`pwd`/screenrc `pwd`/gitconfig)
LINKS=(~/.screenrc ~/.gitconfig)

FILES=(screenrc gitconfig)

tLen=${#FILES[@]}

for (( i=0; i<${tLen}; i++ ));
do
    if [[ -e $HOME/.${FILES[$i]} ]]; then
        echo "rm $HOME/.${FILES[$i]}"
        #rm $HOME/.${FILES[$i]}
    else
        echo "$HOME/.${FILES[$i]} doesn't exist"
    fi
    echo "ln -s $RC_HOME/${PATHS[$i]} $HOME/.${FILES[$i]}"
    #ln -s ${PATHS[$i]} ${LINKS[$i]}
done

