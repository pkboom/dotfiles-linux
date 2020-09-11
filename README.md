Clone this repo to `~/.dotfiles`

Run `fresh.sh`

Run `source ~/.zshrc`

Install [nodejs & npm](https://github.com/nodesource/distributions/blob/master/README.md)

Create launcher

```bash
// icons/Mint-x/apps/96/comix.svg
shutdown -h now
```

Install [albert](https://albertlauncher.github.io/docs/installing)

Install kakaotalk

Install [vscode](https://code.visualstudio.com/download)

Install [xdebug](https://xdebug.org/wizard.php)

Install cairo-clock

Install java

### Sound

system settings → sound → sound effects → starting sound off / leaving cinnamon off

### Change Mouse Button Modifier

Run dconf edit

Find ‘mouse’

wm/preference

mouse-button-modifier -> <super> or <meta>

### No Password for y

```bash
$ sudo visudo
// y ALL=(ALL) NOPASSWD: ALL
```