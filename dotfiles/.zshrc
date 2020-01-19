export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="vendor/bin:$PATH"
export PATH="$HOME/.dotfiles/scripts:$PATH"

# Path to your oh-my-zsh installation.
ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$HOME/.dotfiles/misc/oh-my-zsh-custom

ZSH_THEME="robbyrussell2"

plugins=(git laravel4 laravel5 composer osx vagrant)

source $ZSH/oh-my-zsh.sh

source $Dotfiles/aliases.zsh 

# xdebug configuration for vscode
export XDEBUG_CONFIG="idekey=VSCODE"

sudo service postgresql start