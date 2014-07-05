#!/bin/bash
# ascii => 1 : 49
# ascii => 9 : 57
# man [section:1~9] [keyword]

if [ "$#" == 2 ]; then
    sectionToASCII=`printf '%d' "'$1"`
    if [ "$sectionToASCII" -ge 49 -a $sectionToASCII -le 57 ]; then
        vim -X -c "Man $1 $2 fromShell"
    else
        echo "Wrong Params!"
    fi
    elif [ "$#" == 1 ]; then
        vim -X -c "Man 99 $1 fromShell"
    else
        echo "Wrong Params!"
fi
