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

call plug#begin(s:portable.'/.plugged')
  " Utils
  Plug 'https://github.com/tpope/vim-repeat'
  Plug 'https://github.com/tpope/vim-commentary'
  Plug 'https://github.com/tpope/vim-sleuth'
  Plug 'https://github.com/tpope/vim-surround'
  Plug 'https://github.com/tpope/vim-dispatch'
  Plug 'https://github.com/bronson/vim-trailing-whitespace'
  Plug 'https://github.com/janko/vim-test'

  " Language specific
  Plug 'https://github.com/sheerun/vim-polyglot'
  Plug 'https://github.com/tpope/vim-rails'
  Plug 'https://github.com/lmeijvogel/vim-yaml-helper'
  Plug 'https://github.com/vivi168/vim-snes-asm'

  " Git
  Plug 'https://github.com/tpope/vim-fugitive'
  Plug 'https://github.com/junegunn/gv.vim'

  " Files
  Plug 'https://github.com/preservim/nerdtree'
  Plug 'https://github.com/junegunn/fzf'
  Plug 'https://github.com/junegunn/fzf.vim'

  " Themes & appearance
  Plug 'https://github.com/vivi168/vim-colors-plain'
call plug#end()

source $VIMHOME/color.vim
source $VIMHOME/mapping.vim
source $VIMHOME/plugins.vim

" Tabs
se autoindent
se backspace=indent,eol,start
se smarttab
se expandtab "insert tabs as spaces

" Files
se encoding=utf8
se ffs=unix
se nobackup
se nowb
se noswapfile
se autoread
se nofoldenable

" Visual
se nocursorline
se wrap
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
