#!/bin/bash

echo "Setting up your Linux..."

sudo apt-get update
sudo apt-get upgrade

# in case you need to remove php
# sudo apt-get purge php-common
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get install -y php-mbstring php-sqlite3 php-xml php-gd php-zip php-curl php-cli php-fpm php-bcmath php-mysql php-sqlite3 php-mysql php

curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin/composer

sudo apt-get install -y zsh curl git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

composer global require laravel/installer
sudo apt-get install network-manager libnss3-tools jq xsel
composer global require cpriego/valet-linux
valet install

sudo apt install -y mysql-server
sudo mysql_secure_installation

sudo apt-get install -y deluge
sudo apt-get install -y vim
sudo apt-add-repository ppa:alexanderk23/ppa
sudo apt-get install -y gluqlo
sudo apt install -y nodejs
sudo apt install -y npm
sudo npm install -g -y tldr
sudo apt-get install -y dconf-editor
sudo apt install -y gedit
sudo apt install -y python3-pip
sudo apt-get install -h rlwrap

# pbcopy
sudo apt-get install -y xclip

# nginx
sudo apt-get install -y nginx

mkdir $HOME/code

mkdir $HOME/.vim
cp $HOME/.dotfiles/.plugins.vim $HOME/.vim/plugins.vim

# add current user to www-data
sudo adduser $USER www-data

# copy fonts
cp $HOME/.dotfiles/fonts/* $HOME/.local/share/fonts 

$HOME/.dotfiles/install-fira-code.sh
$HOME/.dotfiles/link.sh

