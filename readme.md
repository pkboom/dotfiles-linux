run `install.sh`

install brew
https://docs.brew.sh/Homebrew-on-Linux

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

sudo apt-get install dconf-tools

run dconf edit

find ‘mouse’

wm/preference

mouse-button-modifier -> <super> or <meta>

Keyboard shortcuts

Windows->Toggle maximization
Windows->Positioning
Windows->Tiling and Snapping->Push snap

No Password for y

\$ sudo visudo

y ALL=(ALL) NOPASSWD: ALL

Install php-redis (ext-redis)
install redis
install pecl
install php-xml if not installed
sudo apt-get install php-redis

### key mapping

```
cd /usr/share/X11/xkb/symbols/t
cp pc pc_backup
sudo gvim pc

    key <LCTL> {	[ Super_L		]	};
    key <LWIN> {	[ NoSymbol, Alt_L   ]	};
    key <LALT>  {	[ Control_L ]	};

sudo rm -rf /var/lib/xkb/*
```

Reboot
