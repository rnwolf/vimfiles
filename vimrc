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

" Improved integration between Vim and its environment (fullscreen, open URL, background command execution) 
Bundle 'xolox/vim-shell'

" Boost up the session management features to that you can save many windows
Bundle 'xolox/vim-session'

" Python and PHP Debugger
Bundle 'fisadev/vim-debug.vim'

"  adds all the Python functionality you could ever want in Vim
Bundle 'klen/python-mode'

"Two-way integration between Vim and IPython 
Bundle 'ivanov/vim-ipython'

" Better file browser
Bundle 'scrooloose/nerdtree'

" Class/module browser
Bundle 'majutsushi/tagbar'

" Code and files fuzzy finder
Bundle 'kien/ctrlp.vim'

" Terminal Vim with 256 colors colorscheme
"Bundle 'fisadev/fisa-vim-colorscheme'

" precision colorscheme for the vim text editor -  http://ethanschoonover.com/solarized 
Bundle 'altercation/vim-colors-solarized'

" Surround
Bundle 'tpope/vim-surround'

" fugitive.vim: a Git wrapper so awesome, it should be illegal
Bundle 'tpope/vim-fugitive'

" Syntax highlighting and matching rules for Markdown.
Bundle 'plasticboy/vim-markdown'

"jedi-vim - awesome Python autocompletion with VIM
"Bundle 'davidhalter/jedi-vim'

"EasyMotion provides a much simpler way to use some motions in vim.
Bundle 'Lokaltog/vim-easymotion'

" ultimate statusline/prompt utility
" DOES NOT WORK IN WINDOWS YET
"Bundle 'Lokaltog/powerline' , {'rtp':  'powerline/bindings/vim'}
" Great Status Line that also works with windows
Bundle 'millermedeiros/vim-statline.git'

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
"Bundle 'Wombat'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
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
" runtime! init/**.vim

" configure Vim to watch for changes in your .vimrc and automatically reload the config.
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC 
augroup END

nmap <leader>v :tabedit $MYVIMRC<CR>

"------------------------
" Open full screen in windows when using gvim
" -----------------------


if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  cd ~                           " Change working directory to home aѕ it always start in executable dire on windows
  filetype on                    " detect the type of file
  filetype plugin on			 " Enable filetype plugins
  filetype indent on

  set encoding=utf-8 			 " Unicode is a give and this avoides uncessary overhead later
  set digraph             " Required for e.g. German umlauts.
  set backspace=indent,eol,start " Let backspace work over anything.
  set clipboard=                 " use system clipboard
  set ffs=unix,dos,mac           " support these in this order. Use unix as default filetype
  set nomodeline				 " Concerns that modelines can be exploted so turn them off
  set autoindent				 " Maintain the indenture when a new line is started
  set hlsearch					 " Highlight search terms
  set ignorecase				 " Case-Insentitive searching
  set incsearch					 " Will search as you type in more characters, the search is refined.
  set smartcase					 " BUT is case sensitive if expression contains a capital letter
 
  set showmatch					 " Show matching brackets when text indicator is over them
  set mat=2 					 " How many tenths of a second to blink when matching brackets
  
  set autoread					 " Automatically re-read any files that have been updated externaly
  set autowrite					 " Automtically write whenoeve a buffer is switched or closed
  
  set scrolloff=3				 " The number of lines to keep below and above the cursor position
  set sidescrolloff=7			 " Number of lines visible in side scrolling
  set wrap						 " Line wrap
  set linebreak					 " only wrap whole words
  
  
  set ruler						 "  cursor position in the form of “line, col” down in your statusline. 
  set cmdheight=2                " the command bar is 2 high
  set cursorline				 " Highlight the current line
  set cursorcolumn               " Highlight the current column - Makes it easy to find and align columns.
  set relativenumber			 " Display relative row numbers
  set mouse=a					 " Turn on selection with the mouse if possible
  set wildmenu					 " give us tab completion functionality down on the command line.   
  set wildignore=*~,.git,tmp,*.log "set it up to ignore certain files and act more like bash completion.
  set wildmode=list:longest,full  " Complete files link a shell
  set history=1000				 " Store lots of command line history

  let mapleader = ","			" Common remapping for LEADER key
  let g:mapleader=","			" Set as global variable so that it is also available inside functions
  
  nmap <leader>l :set list!<CR>  " Use <leader>l to toggle display of whitespace
  set listchars=tab:»\ ,trail:·,eol:¬	 " Tell vim which characters to show for expanded TABs, trailing whitespace, and end-of-lines. VERY useful!

  set autochdir					 " automatically change window's cwd to file's dir

  " Enable syntax-highlighting.
if has("syntax")
  syntax on
endif

" ----------------------------
" Set the colour scheme
"-----------------------------
" Solarized - A well thought out colour scheme for VIM
" See the a version configured for vim at https://github.com/altercation/vim-colors-solarized
"
" if you are going to use terminal then setup emulator's colorscheme to used the Solarized palette.
" Get Palett from http://ethanschoonover.com/solarized
"
" Putty https://github.com/brantb/solarized/tree/master/putty-colors-solarized
" Ubuntu  http://www.webupd8.org/2011/04/solarized-must-have-color-paletter-for.html
" http://www.if-not-true-then-false.com/2012/solarized-linux/
syntax enable
set background=light   " dark or light 
colorscheme solarized


" Use brighter colors if your xterm has a dark background.
if &term =~ "xterm"
  set background=dark
endif
  
"------------------------------
" Disable beep and flash with an autocmd
"------------------------------
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
  
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set guifont=Source_Code_Pro:h12:cANSI
if has("gui_running")
  set guifont=Source_Code_Pro:h12:cANSI

  set guioptions-=A     "Disallows putting highlighted text into copy register
  
  set guioptions-=e " don't use gui tab apperance
  "set guioptions-=T " hide toolbar
  "set guioptions-=m " hide menubar

  set guioptions-=r " don't show scrollbars Disallows right handed scrollbar
  set guioptions-=R " don't show scrollbars Disallows right handed scrollbar
  set guioptions-=l " don't show scrollbars Disallows left handed scrollbar
  set guioptions-=L " don't show scrollbars Disallows left handed scrollbar

  set guioptions+=c " use console dialog rather than popup dialog
endif

  
""""""""""""""""""""""""""""""
"" files, backups and undo
""""""""""""""""""""""""""""""
 
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
 
""""""""""""""""""""""""""""""
"" mouse
""""""""""""""""""""""""""""""
 
set mouse=a
set ttym=xterm2
 
""""""""""""""""""""""""""""""
"" keyboard
""""""""""""""""""""""""""""""
" In linux there are two clipbords, + and *
" The regular clipboard in mapped to +
" The other clipboard stores the last selected text and is mapped to *
"
" <Ctrl-C> -- copy selected to system clipboard (see: http://vim.wikia.com/wiki/Quick_yank_and_paste)
vmap <C-C> "*y
set go+=a   " Visual selection automatically copied to the clipboard.
" <Ctrl-A> -- visually select all and copy to system clipboard
map <C-A> ggvG$"*y<C-o><C-o>

""""""""""""""""""""""""""""""
"" editing
""""""""""""""""""""""""""""""
 
" ,pp toggles paste mode 
map <leader>pp :setlocal paste!<cr> " Toggle paste mode on and off
 
" ,hh turns off search highlight
map <leader>hh :noh<cr>  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking See http://vimcasts.org/episodes/spell-checking/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

set spelllang=en_gb	"Set region to British English
" Can also use environment variable LANG=en_GB.utf-8 to achive same effect

" Shortcuts using <leader>
map <leader>sn ]s  "move to next unspellt word
map <leader>sp [s  "move to previous unspellt word
map <leader>sa zg " Add word to spelling dictionary word file  
map <leader>s? z=  " a list of suggested corrections with the command

 "Vim will look for a spell file at
 "~/vimfile/spell/en.utf-8.add
 "add it to the spellfile with the zg command. 
 "You can also remove a word from the spelling dictionary with the zw command. 
 "If you change your mind, each of these commands can be reverted with the undo commands zug and zuw, respectively.  
	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

  
"--------------------
" Plugin customisation
"--------------------
" Status Line
  set laststatus=2
  let g:statline_fugitive=1
  
" ---------------
" http://www.unlogic.co.uk/posts/vim-python-ide.html
" ---------------

" Anything that exceeds the line length will be highlighted black, feel free to change this colour to suit your colourscheme. 
" It also turns off line wrapping for python files.
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END

"----------------------------
" NERDTree
"----------------------------
  "map <F2> :NERDTreeToggle<CR>

"  nmap <silent> <leader>u :GundoToggle<CR>  " Version control on an atomic level.  This plugin takes advantage of Vim’s undo history, allowing you to rollback a file to an arbitrary point in the file’s past. 
  nmap <silent> <leader>n :NERDTreeToggle %:p:h<CR>  " see the whole file structure.  This gives me a file tree that I can manipulate!

"--------------------------------------------  
" Settings required for Poweline Bundle
"--------------------------------------------
  "set t_Co=256
  set guifont=Consolas\ for\ Powerline\ FixedD:h9
  "set guifont=Menlo Regular for Powerline:h15
  "let g:Powerline_symbols="fancy"
  "set rtp+=~/vimfile/bundle/powerline/powerline/bindings/vim
  
  
 
"----------------------------
" Python-mode
"----------------------------

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0 

"------------------------------------------------------------------------------
" File-type specific settings.
"------------------------------------------------------------------------------

if has("autocmd")

  " Enabled file type detection and file-type specific plugins.
  " filetype plugin on indent
  filetype plugin on

  " Drupal *.module and *.engine files.
  augroup module
    autocmd BufRead                     *.module,*.engine set filetype=php
  augroup END

  " Python code.
  augroup python
    autocmd BufReadPre,FileReadPre      *.py set tabstop=4
    autocmd BufReadPre,FileReadPre      *.py set expandtab
  augroup END

  " Ruby code.
  augroup ruby
    autocmd BufReadPre,FileReadPre      *.rb set tabstop=2
    autocmd BufReadPre,FileReadPre      *.rb set expandtab
  augroup END

  " PHP code.
  augroup php
    autocmd BufReadPre,FileReadPre      *.php set tabstop=4
    autocmd BufReadPre,FileReadPre      *.php set expandtab
  augroup END

  " Java code.
  augroup java
    autocmd BufReadPre,FileReadPre      *.java set tabstop=4
    autocmd BufReadPre,FileReadPre      *.java set expandtab
  augroup END

  " ANT build.xml files.
  augroup xml
    autocmd BufReadPre,FileReadPre      build.xml set tabstop=4
  augroup END


endif

"------------------------------------------------------------------------------
" Abbreviations.
"------------------------------------------------------------------------------

" My name + email address.
ab rnw Rudiger Wolf <Rudiger.Wolf@ThroughputFocus.com>

"------------------------------------------------------------------------------
" Correct typos.
"------------------------------------------------------------------------------

" English.
iab beacuse    because
iab becuase    because
iab acn        can
iab cna        can
iab centre     center
iab chnage     change
iab chnages    changes
iab chnaged    changed
iab chnagelog  changelog
iab Chnage     Change
iab Chnages    Changes
iab ChnageLog  ChangeLog
iab debain     debian
iab Debain     Debian
iab defualt    default
iab Defualt    Default
iab differnt   different
iab diffrent   different
iab emial      email
iab Emial      Email
iab figth      fight
iab figther    fighter
iab fro        for
iab fucntion   function
iab ahve       have
iab homepgae   homepage
iab logifle    logfile
iab lokk       look
iab lokking    looking
iab mial       mail
iab Mial       Mail
iab miantainer maintainer
iab amke       make
iab mroe       more
iab nwe        new
iab recieve    receive
iab recieved   received
iab erturn     return
iab retrun     return
iab retunr     return
iab seperate   separate
iab shoudl     should
iab soem       some
iab taht       that
iab thta       that
iab teh        the
iab tehy       they
iab truely     truly
iab waht       what
iab wiht       with
iab whic       which
iab whihc      which
iab yuo        you
iab databse    database
iab versnio    version
iab obnsolete  obsolete
iab flase      false
iab recrusive  recursive
iab Recrusive  Recursive

" German.
iab cioa       ciao
iab Cioa       Ciao
iab nciht      nicht
iab zeimlicher ziemlicher
iab zeimlich   ziemlich
iab scheisse   scheiße
iab Scheisse   Scheiße
iab morgne     morgen
iab Morgne     Morgen

" Days of week.
iab monday     Monday
iab tuesday    Tuesday
iab wednesday  Wednesday
iab thursday   Thursday
iab friday     Friday
iab saturday   Saturday
iab sunday     Sunday

"------------------------------------------------------------------------------
" Function keys.
"------------------------------------------------------------------------------

" F1: Toggle hlsearch (highlight search matches).
nmap <F1> :set hls!<CR>

" F2: Toggle list (display unprintable characters).
nnoremap <F2> :set list!<CR>

" F4: Write a ChangeLog entry.
map <F4> :r !date<CR>A Rudiger Wolf <Rudiger.Wolf@ThroughputFocus.com><CR><CR> * |

" F5: Insert current date.
"map <F5> :r !date<CR>

" F5: CtrlP - purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.

"  F6: Open file and directory names, URLs and e-mail addresses in your favorite programs (file manager, web browser, e-mail client, etc).

" F11: Toggle Vim between normal and full-screen mode - Provided by vim-shell plugin.
