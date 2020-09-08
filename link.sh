#!/bin/bash

rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

rm -rf $HOME/.vimrc
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc

rm -rf $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

rm -rf $HOME/.gitignore_global
ln -s $HOME/.dotfiles/.gitignore_global $HOME/.gitignore_global

rm -rf $HOME/.local/share/applications/web.desktop
ln -s $HOME/.dotfiles/web.desktop $HOME/.local/share/applications/web.desktop

sudo rm -rf /etc/environment
sudo ln -s $HOME/.dotfiles/environment /etc/environment

# git config --global core.excludesfile $HOME/.gitignore_global
