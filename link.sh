#!/bin/bash

DOTFILES=$HOME/.dotfiles/dotfiles

rm -f $HOME/.zshrc
ln -s $DOTFILES/.zshrc $HOME/.zshrc

rm -f $HOME/.local/share/applications/web.desktop
ln -s $DOTFILES/web.desktop $HOME/.local/share/applications/web.desktop

rm -f $HOME/.gitconfig
ln -s $DOTFILES/.gitconfig $HOME/.gitconfig

rm -f $HOME/.gitignore_global
ln -s $DOTFILES/.gitignore_global $HOME/.gitignore_global

sudo rm -f /etc/environment
sudo ln -s $DOTFILES/environment /etc/environment

# git config --global core.excludesfile $HOME/.gitignore_global
