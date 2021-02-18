[Connecting to GitHub with SSH](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh)

### Copy public key and register on github

`cat id_ed25519.pub`

### No Password for y

```bash
$ sudo visudo
y ALL=(ALL) NOPASSWD: ALL
```

```sh
sudo apt install git -y
mkdir ~/.dotfiles
cd ~/.dotfiles
```

```
git clone git@github.com:pkboom/dotfiles-linux.git ~/.dotfiles
./fresh.sh
source ~/.zshrc
```

Install [nodejs & npm](https://github.com/nodesource/distributions/blob/master/README.md)

`sudo npm install -g tldr`

Create launcher(right mouse click on background)

search icon by `comix`
`shutdown -h now`

Install [albert](https://albertlauncher.github.io)

Install [vscode](https://code.visualstudio.com/download)

`php -i | xclip -sel clip`

Install [xdebug](https://xdebug.org/wizard.php)

Install java

### Sound

system settings → sound → sounds(one of tabs) → starting sound off / leaving cinnamon off

### Change Mouse Button Modifier

Run `dconf-editor`  
Find ‘mouse-button-modifier’  
org.cinnamon.desktop.wm.preferences =>
mouse-button-modifier -> `<super>` or `<meta>`

Add `albert`, `google chrome` to startup application

change a login shell to zsh
chsh -s \$(which zsh)

[Install snap](https://snapcraft.io/docs/installing-snap-on-linux-mint)

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

### Dateformet

`%m-%d %l:%M %p`

### Disable keyring

1. Go to `Passwords and Keys`

2. Right click `Default keyring`

3. Change password

4. For a new password, enter null

### Grub timeout

`code /etc/default/grub`

#GRUB_TIMEOUT_STYLE=hidden
GRUB_TIMEOUT=1

`sudo update-grub`

### Disable printer connection notification

`code /etc/cups/cups-browsed.conf`

BrowseRemoteProtocols none

sudo service cups restart
