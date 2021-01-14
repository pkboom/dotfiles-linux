[Connecting to GitHub with SSH](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh)

`sudo apt install git -y`

`mkdir ~/.dotfiles`

`cd ~/.dotfiles`

`git clone git@github.com:pkboom/dotfiles-linux.git ~/.dotfiles`

`./fresh.sh`

`source ~/.zshrc`

Install [nodejs & npm](https://github.com/nodesource/distributions/blob/master/README.md)

`npm install -g tldr`

Create launcher(right mouse click on background)

search icon by comix
`shutdown -h now`

Install [albert](https://albertlauncher.github.io/docs/installing)

Install [vscode](https://code.visualstudio.com/download)

`php -i | xclip -sel clip`

Install [xdebug](https://xdebug.org/wizard.php)

Install cairo-clock

Install java

### Sound

system settings → sound → sounds(one of tabs) → starting sound off / leaving cinnamon off

### Change Mouse Button Modifier

Run `dconf-editor`

Find ‘mouse-button-modifier’

mouse-button-modifier -> <super> or <meta>

### No Password for y

```bash
$ sudo visudo
// y ALL=(ALL) NOPASSWD: ALL
```

Add `albert`, `google chrome` to startup application

change a login shell to zsh
chsh -s \$(which zsh)

[Install snap](https://snapcraft.io/docs/installing-snap-on-linux-mint)

`sudo rm /etc/apt/preferences.d/nosnap.pref`

`sudo apt update`

`sudo apt install snapd`

`sudo snap install mailspring`

### change maximum upload file size

`locate php.ini`

open `/etc/php/*.*/fpm/php.ini`

```
upload_max_filesize = 100M
post_max_size = 100M
```

`valet restart`

### screenshot

Keyboard > Shortcuts > Custom shortcuts
command
`gnome-screenshot -i`
binding
Shift+Alt+4
