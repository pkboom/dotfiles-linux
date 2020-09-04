export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.config/composer/vendor/bin:vendor/bin:$PATH"
export PATH="$HOME/.dotfiles/scripts:$PATH"

# Path to your oh-my-zsh installation.
ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$HOME/.dotfiles/oh-my-zsh-custom

ZSH_THEME="robbyrussell2"

plugins=(git laravel4 laravel5 composer osx vagrant)

source $ZSH/oh-my-zsh.sh

source $HOME/.dotfiles/dotfiles/aliases.sh
source $HOME/.dotfiles/dotfiles/functions.sh

# xdebug configuration for vscode
export XDEBUG_CONFIG="idekey=VSCODE"

DIR=${PWD##*/}

if [ "code" = "$DIR" ]; then
    ls
fi

