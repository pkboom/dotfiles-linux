export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="vendor/bin:$PATH"
export PATH="$HOME/.dotfiles/scripts:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

source $ZSH/oh-my-zsh.sh

source $HOME/robbyrussell2.zsh-theme

source ~/aliases.zsh 

# xdebug configuration for vscode
export XDEBUG_CONFIG="idekey=VSCODE"
