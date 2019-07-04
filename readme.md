run `install.sh`

install oh-my-zsh

run `link.sh`

source ~/.zshrc

install nodejs & npm

Quit window

gnome-session-quit --power-off

icons/Mint-x/apps/96/comix.svg

albert https://albertlauncher.github.io/docs/installing/

kakaotalk

vscode

xdebug https://xdebug.org/wizard.php

terminal font - inconsolata

cairo-clock

system settings → sound → sound effects → starting sound off / leaving cinnamon off

Change Mouse Button Modifier

// sudo apt-get install dconf-tools
run dconf-tools
find ‘mouse’

wm/preference

mouse-button-modifier -> <super> or <meta>

Keyboard shortcuts

Windows->Toggle maximization
Windows->Positioning
Windows->Tiling and Snapping->Push snap


No Password for y

$ sudo visudo

y ALL=(ALL) NOPASSWD: ALL

Disable xdeubg
sudo phpdismod xdebug 
sudo service php7.2-fpm restart

check the status
sudo phpquery -v 7.2 -s fpm -m xdebug

enable
sudo phpenmod xdebug 
sudo service php7.2-fpm restart


Install php-redis (ext-redis)
install redis
install pecl
install php-xml if not installed
sudo apt-get install php-redis
