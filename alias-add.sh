#!/bin/bash

chmod +x ssh-multi.sh

grep -i '^alias ssh-multi=' ~/.bashrc 1>/dev/null 2>/dev/null

if [[ $? -eq 0 ]] ; then 
    sed -i '/^alias ssh-multi/d' ~/.bashrc
fi

echo "alias ssh-multi=\"$PWD/ssh-multi.sh\"" >> ~/.bashrc
source ~/.bashrc
