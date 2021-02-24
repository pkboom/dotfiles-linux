# Load Composer tools
export PATH=$HOME/.config/composer/vendor/bin:$PATH

# Use project specific binaries before global ones
export PATH=node_modules/.bin:vendor/bin:$PATH

export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

export DATABASE_MANAGEMENT_SYSTEM=postgres

DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation.
ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$DOTFILES/oh-my-zsh-custom

ZSH_THEME="robbyrussell2"

source $ZSH/oh-my-zsh.sh

source $DOTFILES/aliases.sh
source $DOTFILES/functions.sh

# xdebug configuration for vscode
export XDEBUG_CONFIG="idekey=VSCODE"

DIR=${PWD##*/}

if [ "code" = "$DIR" ]; then
    ls
fi

