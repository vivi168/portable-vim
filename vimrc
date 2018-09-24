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
  Plug 'https://github.com/tpope/vim-sensible'
  Plug 'https://github.com/tpope/vim-commentary'
  Plug 'https://github.com/scrooloose/nerdtree'
  Plug 'https://github.com/ctrlpvim/ctrlp.vim'
  Plug 'https://github.com/mileszs/ack.vim'
  Plug 'https://github.com/ervandew/supertab'
  Plug 'https://github.com/bronson/vim-trailing-whitespace'
  Plug 'https://github.com/airblade/vim-gitgutter'
  Plug 'https://github.com/easymotion/vim-easymotion'
  Plug 'https://github.com/itchyny/lightline.vim'
  Plug 'https://github.com/NLKNguyen/papercolor-theme'
call plug#end()

" Leader mapped to Space
let mapleader = "\<Space>"
nnoremap <space> <nop>

" Colors
syntax enable
se t_Co=256
set background=light
colorscheme PaperColor

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
runtime macros/matchit.vim

" Buffers
se splitright
se splitbelow
se diffopt+=vertical

" Buffer
nnoremap <tab> :b#<cr>

" NERDTree
nnoremap <c-t> :NERDTreeToggle<cr>
nnoremap <c-f> :NERDTreeFind<cr>
let NERDTreeQuitOnOpen=1

" CtrlP
let g:ctrlp_user_command = ['.git', 'git ls-files -co --exclude-standard %s', 'find %s -type f']
nnoremap <c-b> :CtrlPBuffer<cr>
nnoremap <leader>m :CtrlPMRUFiles<cr>

" Ack.vim
let g:ackprg = 'git grep -n'
nnoremap <Leader>s :Ack!<Space>
nnoremap @ :Ack!<cr>

" Fix white spaces
nnoremap <leader>ws :FixWhitespace<cr>

" Git Gutter
nmap <leader>n <plug>GitGutterNextHunk
nmap <leader>p <plug>GitGutterPrevHunk
nmap <leader>hs <plug>GitGutterStageHunk
nmap <leader>hu <plug>GitGutterUndoHunk
set updatetime=100

" Movements
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

" Quickfix window
nmap q :ccl<cr>

if has("gui_running")
  set guioptions=
  set guifont=Courier:h14
  set noerrorbells
  set novisualbell
  set t_vb=
  autocmd! GUIEnter * set vb t_vb=
endif
