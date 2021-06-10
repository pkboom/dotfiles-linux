#!/bin/bash

cd $HOME/.dotfiles/desktops

for f in *; do
    if [ -f "$f" ] && [[ "$f" =~ desktop$ ]]; then # 
        rm -f $HOME/.local/share/applications/$f
        ln -s $HOME/.dotfiles/desktops/$f $HOME/.local/share/applications
    fi
done

echo 'desktops all linked'