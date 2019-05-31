#!/bin/bash

rm -f $HOME/.zshrc
ln -s $HOME/linux-setup/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/linux-setup/dotfiles/robbyrussell2.zsh-theme $HOME/

rm -f $HOME/.aliases
ln -s $HOME/linux-setup/dotfiles/.aliases $HOME/.aliases

rm -f $HOME/.local/share/applications/web.desktop
ln -s $HOME/linux-setup/dotfiles/web.desktop $HOME/.local/share/applications/web.desktop

rm -f $HOME/.gitconfig
ln -s $HOME/linux-setup/dotfiles/.gitconfig

rm -f $HOME/.gitignore_global
ln -s $HOME/linux-setup/dotfiles/.gitignore_global

rm -f /etc/environment
ln -s $HOME/linux-setup/dotfiles/environment /etc/environment
