set nocompatible               " be iMproved
filetype off                   " required!

if has('win32') || has('win64')
   set rtp+=~/vimfiles/bundle/vundle/
   call vundle#rc('$HOME/vimfiles/bundle/')
else
   " Usual quickstart instructions
   set rtp+=~/.vim/bundle/vundle/
   call vundle#rc()
endif

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" original repos on github
" Python and PHP Debugger
Bundle 'fisadev/vim-debug.vim'
" Better file browser
Bundle 'scrooloose/nerdtree'
" Class/module browser
Bundle 'majutsushi/tagbar'
" Code and files fuzzy finder
Bundle 'kien/ctrlp.vim'
" Terminal Vim with 256 colors colorscheme
Bundle 'fisadev/fisa-vim-colorscheme'
" Surround
Bundle 'tpope/vim-surround'
" fugitive.vim: a Git wrapper so awesome, it should be illegal
Bundle 'tpope/vim-fugitive'
" Syntax highlighting and matching rules for Markdown.
Bundle 'plasticboy/vim-markdown'
"EasyMotion provides a much simpler way to use some motions in vim.
Bundle 'Lokaltog/vim-easymotion'
" ultimate statusline/prompt utility
Bundle 'Lokaltog/powerline'
" static syntax and style checker for Python source code
Bundle 'nvie/vim-flake8'
" Dynamic Window Manager
Bundle 'spolu/dwm.vim'
" vim-gitgutter - A Vim plugin which shows a git diff in the gutter (sign column).
Bundle 'airblade/vim-gitgutter'
" vim plugin for better line numbers
Bundle 'myusuf3/numbers.vim'
"UltiSnips is the Ultimate solution for snippets under Vim. Snippets are intelligent texts that spare you a lot of typing. 
Bundle 'SirVer/ultisnips'
"Easily create and reformat your RST (reStructuredText) tables as you change cell content.
Bundle 'nvie/vim-rst-tables'
"Riv: reStructuredText in Vim
Bundle 'Rykka/riv.vim'
"Implements transparent editing of gpg encrypted files. The filename must have a ".gpg", ".pgp" or ".asc" suffix.
Bundle 'jamessan/vim-gnupg'
"Syntastic is a syntax checking plugin that runs files through external syntax checkers and displays any resulting errors to the user.
Bundle 'scrooloose/syntastic.git'
"Writegood is a plugin to highlight common writing problems.
"Bundle 'davidbeckingsale/writegood.vim'
"Fast and Easy Find and Replace Across Multiple Files
Bundle 'vim-scripts/EasyGrep'
" vimscript for creating gists (http://gist.github.com).
Bundle 'mattn/gist-vim'
" vim-scripts repos
" Gvim colorscheme
Bundle 'Wombat'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" https://github.com/plasticboy/vim-markdown/ # Syntax highlighting and matching rules for Markdown.
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

filetype plugin indent on

" Source initialization files
runtime! init/**.vim