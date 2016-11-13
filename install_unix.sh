#!/usr/bin/env bash

## Link dictionay and files
RCHOME=$HOME/Documents/rc
CLEAN=false
FILES=(screenrc gitconfig)
tLen=${#FILES[@]}

cleanRCFiles (){
    for (( i=0; i<${tLen}; i++ ));
    do
        if [[ -e $HOME/.${FILES[$i]} ]]; then
            echo "rm $HOME/.${FILES[$i]}"
            rm $HOME/.${FILES[$i]}
        else
            echo "$HOME/.${FILES[$i]} doesn't exist"
        fi
    done
}

buildRCFiles (){
    for (( i=0; i<${tLen}; i++ ));
    do
        echo "ln -s $RCHOME/${FILES[$i]} $HOME/.${FILES[$i]}"
        ln -s $RCHOME/${FILES[$i]} $HOME/.${FILES[$i]}
    done
}

while getopts c: opt
do
    case $opt in
        c) CLEAN=$OPTARG;;
        \?) echo "Invalid option -$OPTARG" >&2;;
    esac
done
    
if [[ ! -e $RCHOME ]]; then
    git clone https://github.com/whlin/rc $RCHOME
fi

echo "----- CLEAN -----"
cleanRCFiles

if [[ "${CLEAN}" != true ]]; then
    echo "----- BUILD -----"
    buildRCFiles
fi

