#!/bin/bash

cd desktops

for f in *; do
    if [ -f "$f" ] && [[ "$f" =~ desktop$ ]]; then # 
        ln -s $DOTFILES/desktops/$f $HOME/.local/share/applications
        echo $f
    fi
done