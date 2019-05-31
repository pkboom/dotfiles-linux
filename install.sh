#!/bin/bash

echo "Setting up your Linux..."

sudo apt-get update

# in case you need to remove php
# sudo apt-get purge php-common
sudo apt-get install -y php-mbstring php-sqlite3 php-xml php-gd php-zip php-curl php-mysql php-cli php-fpm php-bcmath php-mysql php

curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin/composer

sudo apt-get install -y zsh curl git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

composer global require laravel/installer
composer global require cpriego/valet-linux
valet install

sudo apt install -y mysql-server
sudo mysql_secure_installation

mkdir $HOME/code

sudo apt-get install dconf-tools
