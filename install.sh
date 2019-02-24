#!/bin/bash

echo "Setting up your Linux..."

sudo apt-get update

#curl -sS https://getcomposer.org/installer | php

composer global require laravel/installer
composer global require cpriego/valet-linux
valet install

mkdir $HOME/code

sudo apt-get install clementine

