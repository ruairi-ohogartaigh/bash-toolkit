#!/bin/bash

#basically a more user friendly sed -i cmd

if [ "$#" -eq 3 ]; then
    echo "Replacing all occurrences of $1 in $3 with $2 now"
    sed -i "s/$1/$2/g" $3
else
    echo "incorrect number of parameters, please add as follows \"./PhraseSwap from-value  to-value filedir\""
fi
