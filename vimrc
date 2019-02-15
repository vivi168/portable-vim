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
  Plug 'https://github.com/tpope/vim-sensible'
  Plug 'https://github.com/tpope/vim-commentary'
  Plug 'https://github.com/ervandew/supertab'
  Plug 'https://github.com/bronson/vim-trailing-whitespace'

  " Ruby
  Plug 'https://github.com/vim-ruby/vim-ruby'
  Plug 'https://github.com/tpope/vim-rails'
  Plug 'https://github.com/thoughtbot/vim-rspec'

  " Javascript
  Plug 'https://github.com/neoclide/vim-jsx-improve'
  Plug 'https://github.com/kchmck/vim-coffee-script'

  " ASM
  Plug 'https://github.com/ARM9/snes-syntax-vim'

  " Git
  Plug 'https://github.com/tpope/vim-fugitive'
  Plug 'https://github.com/tpope/vim-rhubarb'
  Plug 'https://github.com/junegunn/gv.vim'
  Plug 'https://github.com/airblade/vim-gitgutter'

  " Files
  Plug 'https://github.com/scrooloose/nerdtree'
  Plug 'https://github.com/junegunn/fzf'
  Plug 'https://github.com/junegunn/fzf.vim'
  Plug 'https://github.com/airblade/vim-rooter'

  " Themes & appearance
  Plug 'https://github.com/junegunn/seoul256.vim'
  Plug 'https://github.com/arcticicestudio/nord-vim'
  Plug 'https://github.com/itchyny/lightline.vim'
  Plug 'https://github.com/junegunn/goyo.vim'
call plug#end()

source $VIMHOME/color.vim
source $VIMHOME/mapping.vim
source $VIMHOME/plugins.vim

" Tabs
se expandtab "insert tabs as spaces
" File specific
au BufNewFile,BufRead *.coffee set filetype=coffee
au Filetype javascript setlocal ts=4 sw=4
au Filetype coffee setlocal ts=2 sw=2
au Filetype scss setlocal ts=2 sw=2
au BufNewFile,BufRead *.asm,*.inc set filetype=snes
au Filetype snes setlocal ts=4 sw=4 commentstring=;\ %s

" Files
se encoding=utf8
se ffs=unix
se nobackup
se nowb
se noswapfile

" Visual
se cursorline
se nu
se wrap
se laststatus=2
se showcmd
se noshowmode
se ruler
se title
se mouse=

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
