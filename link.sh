#!/bin/bash

Dotfiles=$HOME/.dotfiles/dotfiles

rm -f $HOME/.zshrc
ln -s $Dotfiles/.zshrc $HOME/.zshrc

rm -f $HOME/.local/share/applications/web.desktop
ln -s $Dotfiles/web.desktop $HOME/.local/share/applications/web.desktop

rm -f $HOME/.gitconfig
ln -s $Dotfiles/.gitconfig $HOME/.gitconfig

rm -f $HOME/.gitignore_global
ln -s $Dotfiles/.gitignore_global $HOME/.gitignore_global

sudo rm -f /etc/environment
sudo ln -s $Dotfiles/environment /etc/environment

# git config --global core.excludesfile $HOME/.gitignore_global
