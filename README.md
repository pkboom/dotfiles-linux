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

Install kakaotalk

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

zsh
chsh -s $(which zsh) 


[Install snap](https://snapcraft.io/docs/installing-snap-on-linux-mint)

`sudo rm /etc/apt/preferences.d/nosnap.pref`

`sudo apt update`

`sudo apt install snapd`

'sudo snap install mailspring'
