#!/bin/bash

wc -l aliaslist.txt 
cp aliaslist.txt ~

cd ~


while IFS= read -r line; do
    if grep -q "alias $line" .bashrc; 
    then
        echo $line alias found, already in bashrc
    else
        echo $line alias not found, now appending 
        echo "alias $line">>.bashrc
    fi
done < aliaslist.txt
rm aliaslist.txt
exit 0


#for the aliaises to apply to the user account, the system needs a reboot
#shutdown -r now 