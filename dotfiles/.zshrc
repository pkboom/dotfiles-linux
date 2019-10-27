export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="vendor/bin:$PATH"
export PATH="$HOME/.dotfiles/scripts:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

source $ZSH/oh-my-zsh.sh

export Dotfiles=$HOME/.dotfiles/dotfiles

source $Dotfiles/robbyrussell2.zsh-theme

source $Dotfiles/aliases.zsh 

# xdebug configuration for vscode
export XDEBUG_CONFIG="idekey=VSCODE"

sudo service postgresql start