export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="vendor/bin:$PATH"
export PATH="$HOME/linux-setup/scripts:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

source ~/.aliases 

# xdebug configuration for vscode
export XDEBUG_CONFIG="idekey=VSCODE"
