#!/bin/bash

cd $HOME/.dotfiles/desktops

# remove all broken links
find $HOME/.local/share/applications -xtype l -delete

for f in *; do
    if [ -f "$f" ] && [[ "$f" =~ desktop$ ]]; then # 
        ln -sf $HOME/.dotfiles/desktops/$f $HOME/.local/share/applications
    fi
done

echo 'desktops all linked'