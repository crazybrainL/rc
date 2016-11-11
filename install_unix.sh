#!/usr/bin/env bash

## Link dictionay and files
PATHS=(`pwd`/screenrc `pwd`/gitconfig)
LINKS=(~/.screenrc ~/.gitconfig)

tLen=${#PATHS[@]}

for (( i=0; i<${tLen}; i++ ));
do
    if [[ -e ${LINKS[$i]} ]]; then
        echo "rm ${LINKS[$i]}"
        rm ${LINKS[$i]}
    else
        echo "${LINKS[$i]} doesn't exist"
    fi
    echo "ln -s ${PATHS[$i]} ${LINKS[$i]}"
    ln -s ${PATHS[$i]} ${LINKS[$i]}
done

