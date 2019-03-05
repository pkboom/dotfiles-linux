#!/bin/bash

echo "Setting up your Linux..."

sudo apt-get update

curl -sS https://getcomposer.org/installer | php

# sudo mv composer.phar /usr/local/bin/composer

composer global require laravel/installer
composer global require cpriego/valet-linux
valet install

mkdir $HOME/code

sudo apt-get install clementine

