#!/bin/bash

rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME

rm -rf $HOME/.my.cnf
ln -s $HOME/.dotfiles/.my.cnf $HOME

rm -rf $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME

rm -rf $HOME/.gitignore_global
ln -s $HOME/.dotfiles/.gitignore_global $HOME

sudo rm -rf /etc/environment
sudo ln -s $HOME/.dotfiles/environment /etc

$HOME/.dotfiles/desktops/link-desktops.sh

git config --global core.excludesfile $HOME/.gitignore_global
