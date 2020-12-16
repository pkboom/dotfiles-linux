#!/bin/bash

rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

rm -rf $HOME/.my.cnf
ln -s $HOME/.dotfiles/.my.cnf $HOME/.my.cnf

rm -rf $HOME/.vimrc
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc

rm -rf $HOME/.vim/plugins.vim
ln -s $HOME/.dotfiles/plugins.vim $HOME/.vim/plugins.vim

rm -rf $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

rm -rf $HOME/.gitignore_global
ln -s $HOME/.dotfiles/.gitignore_global $HOME/.gitignore_global

rm -rf $HOME/.local/share/applications/web.desktop
ln -s $HOME/.dotfiles/desktops/web.desktop $HOME/.local/share/applications/web.desktop

rm -rf $HOME/.local/share/applications/download.desktop
ln -s $HOME/.dotfiles/desktops/download.desktop $HOME/.local/share/applications/download.desktop

sudo rm -rf /etc/environment
sudo ln -s $HOME/.dotfiles/environment /etc/environment

# git config --global core.excludesfile $HOME/.gitignore_global
