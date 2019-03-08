#!/bin/bash

echo "Setting up your Linux..."

sudo apt-get update

curl -sS https://getcomposer.org/installer | php

# sudo mv composer.phar /usr/local/bin/composer

# in case you need to remove php
# sudo apt-get purge php-common
sudo apt-get install php-mbstring php-sqlite3 php-xml php-gd php-zip php-curl php-mysql php-cli php php-fpm

composer global require laravel/installer
composer global require cpriego/valet-linux
valet install

mkdir $HOME/code

sudo apt-get install clementine

