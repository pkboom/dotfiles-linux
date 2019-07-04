#!/bin/bash

rm -f $HOME/.zshrc
ln -s $HOME/.dotfiles/dotfiles/.zshrc $HOME/.zshrc

rm -f $HOME/robbyrussell2.zsh-theme
ln -s $HOME/.dotfiles/dotfiles/robbyrussell2.zsh-theme $HOME/robbyrussell2.zsh-theme

rm -f $HOME/.aliases
ln -s $HOME/.dotfiles/dotfiles/.aliases $HOME/.aliases

rm -f $HOME/.local/share/applications/web.desktop
ln -s $HOME/.dotfiles/dotfiles/web.desktop $HOME/.local/share/applications/web.desktop

rm -f $HOME/.gitconfig
ln -s $HOME/.dotfiles/dotfiles/.gitconfig $HOME/.gitconfig

rm -f $HOME/.gitignore_global
ln -s $HOME/.dotfiles/dotfiles/.gitignore_global $HOME/.gitignore_global

sudo rm -f /etc/environment
sudo ln -s $HOME/.dotfiles/dotfiles/environment /etc/environment
