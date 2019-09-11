se nocompatible
filetype plugin indent on

" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)
" what is the name of the directory containing this file?
let s:portable = expand('<sfile>:p:h')
let $VIMHOME = s:portable

" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after', s:portable, &runtimepath, s:portable)

set undodir=$VIMHOME/undodir
set undofile

call plug#begin(s:portable.'/plugged')
  " Utils
  Plug 'https://github.com/tpope/vim-repeat'
  Plug 'https://github.com/tpope/vim-commentary'
  Plug 'https://github.com/tpope/vim-sleuth'
  Plug 'https://github.com/tpope/vim-surround'
  Plug 'https://github.com/bronson/vim-trailing-whitespace'
  Plug 'https://github.com/janko/vim-test'
  Plug 'https://github.com/godlygeek/tabular'

  " Ruby
  Plug 'https://github.com/vim-ruby/vim-ruby'
  Plug 'https://github.com/tpope/vim-rails'

  " Javascript
  Plug 'https://github.com/neoclide/vim-jsx-improve'
  Plug 'https://github.com/kchmck/vim-coffee-script'

  " YAML
  Plug 'https://github.com/lmeijvogel/vim-yaml-helper'

  " ASM
  Plug 'https://github.com/ARM9/snes-syntax-vim'

  " Git
  Plug 'https://github.com/tpope/vim-fugitive'

  " Files
  Plug 'https://github.com/scrooloose/nerdtree'
  Plug 'https://github.com/junegunn/fzf'
  Plug 'https://github.com/junegunn/fzf.vim'

  " Themes & appearance
  Plug 'https://github.com/morhetz/gruvbox'
call plug#end()

source $VIMHOME/color.vim
source $VIMHOME/mapping.vim
source $VIMHOME/plugins.vim

" Tabs
se autoindent
se backspace=indent,eol,start
se smarttab
se expandtab "insert tabs as spaces
" File specific
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.asm,*.inc set filetype=snes
au Filetype snes setlocal commentstring=;\ %s

" Files
se encoding=utf8
se ffs=unix
se nobackup
se nowb
se noswapfile
se autoread

" Visual
se nocursorline
" se nu
" se rnu
se wrap
" se laststatus=2
se showcmd
se wildmenu
se ruler
se title
se mouse=
se scrolloff=3

" Search
se hlsearch
se incsearch
se showmatch
se ignorecase
se smartcase

" Buffers
se splitright
se splitbelow
se diffopt+=vertical

" Term
au TerminalOpen * setlocal listchars= nonu nornu
