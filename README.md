# vimfiles

Portable vim configuration

## Install on windows

open Powershell prompt
```
cd ~
git clone git://github.com/rnwolf/vimfiles ./vimfiles
git clone https://github.com/gmarik/vundle ./vimfiles/bundle/vundle
mklink _vimrc vimfiles\vimrc
gvim
```
## Install on linux

```
cd ~
git clone git://github.com/rnwolf/vimfiles ~/.vim
git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
ln -s ~/.vim/vimrc ~/.vimrc
```


## Inspired by
 - https://github.com/finack/dotfiles
 - https://github.com/thoughtbot/dotfiles
 - https://github.com/Casecommons/vim-config
 - http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/ does not work on windows
 