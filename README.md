# vimfiles

Portable vim configuration

## Install on windows

Make sure you have git, curl, vim and exuberant-ctags installed.
see the following for more information: https://github.com/gmarik/vundle/wiki/Vundle-for-Windows

One of the vim python helper plugins also requires thse dependancies to be installed via pip

pip install dbgp vim-debug pep8 flake8 pyflakes
Install the patched font for Powerline.
https://github.com/eugeneching/consolas-powerline-vim
or https://github.com/Lokaltog/powerline-fonts


open Powershell prompt
```
cd ~
git clone git://github.com/rnwolf/vimfiles ./vimfiles
git clone https://github.com/gmarik/vundle ./vimfiles/bundle/vundle
mklink _vimrc vimfiles\vimrc
gvim
```

The vim-shell integration requires one to copy the Two Windows DLL files that are included to the ~/vimfiles directory.

## Install on linux

sudo apt-get install vim exuberant-ctags git
sudo pip install dbgp vim-debug pep8 flake8 pyflakes

You may also install ipython for script development
easy_install ipython[zmq,qtconsole,notebook,test]

```
cd ~
git clone git://github.com/rnwolf/vimfiles ~/.vim
git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
ln -s ~/.vim/vimrc ~/.vimrc
```

Launch vim or gvim and run :BundleInstall (or vim +BundleInstall +qall for CLI lovers)

## Inspired by
 - https://github.com/finack/dotfiles
 - https://github.com/thoughtbot/dotfiles
 - https://github.com/Casecommons/vim-config
 - http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/ does not work on windows
 
