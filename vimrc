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
  if executable('ctags')
    Plug 'https://github.com/majutsushi/tagbar'
  end
  if v:version >= 800
    Plug 'https://github.com/w0rp/ale'
  end

  " Ruby
  Plug 'https://github.com/vim-ruby/vim-ruby'
  Plug 'https://github.com/tpope/vim-rails'

  " Javascript
  " Plug 'https://github.com/pangloss/vim-javascript'
  " Plug 'https://github.com/mxw/vim-jsx'
  Plug 'https://github.com/neoclide/vim-jsx-improve'

  " DB
  Plug 'https://github.com/tpope/vim-dadbod'

  " Git
  Plug 'https://github.com/tpope/vim-fugitive'
  Plug 'https://github.com/junegunn/gv.vim'
  Plug 'https://github.com/airblade/vim-gitgutter'

  " Files
  Plug 'https://github.com/scrooloose/nerdtree'
  Plug 'https://github.com/junegunn/fzf'
  Plug 'https://github.com/junegunn/fzf.vim'
  if !executable('rg')
    Plug 'https://github.com/mileszs/ack.vim'
  end

  " Themes & appearance
  Plug 'https://github.com/NLKNguyen/papercolor-theme'
  Plug 'https://github.com/junegunn/seoul256.vim'
  Plug 'https://github.com/lifepillar/vim-solarized8'
  Plug 'https://github.com/itchyny/lightline.vim'
  Plug 'https://github.com/junegunn/goyo.vim'

  " Misc
  Plug 'https://github.com/mhinz/vim-startify'
call plug#end()

source $VIMHOME/color.vim
source $VIMHOME/mapping.vim
source $VIMHOME/plugins.vim

" Tabs
se tabstop=2 "tab width
se shiftwidth=2 "indent width (<< >> ==)
se expandtab "insert tabs as spaces

" Files
se encoding=utf8
se ffs=unix
se nobackup
se nowb
se noswapfile
se autowriteall

" Visual
se cursorline
se nu
se wrap
se laststatus=2
se showcmd
se ruler
se title
se mouse=

" Search
se hlsearch
se incsearch
se showmatch

" Buffers
se splitright
se splitbelow
se diffopt+=vertical
