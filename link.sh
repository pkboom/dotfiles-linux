#!/bin/bash

rm -f $HOME/.zshrc
ln -s $HOME/linux-setup/dotfiles/.zshrc $HOME/.zshrc

rm -f $HOME/.aliases
ln -s $HOME/linux-setup/dotfiles/.aliases $HOME/.aliases

rm -f $HOME/.oh-my-zsh/themes/robbyrussell.zsh-theme
ln -s $HOME/linux-setup/dotfiles/robbyrussell.zsh-theme $HOME/.oh-my-zsh/themes/robbyrussell.zsh-theme

rm -f $HOME/.local/share/applications/web.desktop
ln -s $HOME/linux-setup/dotfiles/web.desktop $HOME/.local/share/applications/web.desktop

rm -f /etc/environment
ln -s $HOME/linux-setup/dotfiles/environment /etc/environment
