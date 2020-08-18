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
  Plug 'https://github.com/bronson/vim-trailing-whitespace'
  Plug 'https://github.com/janko/vim-test'

  " Language specific
  Plug 'https://github.com/tpope/vim-rails'
  Plug 'https://github.com/lmeijvogel/vim-yaml-helper'
  Plug 'https://github.com/vivi168/vim-snes-asm'

  " Git
  Plug 'https://github.com/tpope/vim-fugitive'

  " Files
  Plug 'https://github.com/preservim/nerdtree'
  Plug 'https://github.com/ctrlpvim/ctrlp.vim'
call plug#end()

runtime macros/matchit.vim

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
syntax off
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

" Leader mapped to Space
let mapleader = "\<Space>"
nnoremap <space> <nop>

nmap [b :bp<cr>
nmap ]b :bn<cr>
nmap [q :cprev<cr>
nmap ]q :cnext<cr>
nnoremap <c-o> :copen<cr>

nnoremap <tab> :b#<cr>
nnoremap <leader>l :noh<cr>

command! W :w

" Open lines
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

" Movements
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Terminal
nnoremap <leader>t :tab terminal<cr>
nnoremap <leader>' :terminal<cr>
nnoremap <leader>% :vert terminal<cr>

" Grep
set grepprg=rg\ --vimgrep\ --no-heading\ --no-ignore-vcs\ --hidden\ --smart-case
nnoremap <c-f> :grep!<space>
nnoremap K :grep! '\b<cword>\b'<cr>

" NERDTree
command! E NERDTreeToggle
command! F NERDTreeFind
let NERDTreeQuitOnOpen=1
let g:NERDTreeNodeDelimiter = "\u00a0"

" CtrlP
let g:ctrlp_user_command = 'rg --files --no-ignore-vcs --hidden'
nnoremap <c-b> :CtrlPBuffer<cr>
nnoremap <c-n> :CtrlPMRU<cr>

" Fix white spaces
nnoremap <leader>ws :FixWhitespace<cr>

" YAML
let g:vim_yaml_helper#auto_display_path = 0
nnoremap <leader>yf :YamlDisplayFullPath<cr>

" Vim Test
nnoremap <silent> <Leader>tf :TestFile<CR>
nnoremap <silent> <Leader>tn :TestNearest<CR>
nnoremap <silent> <Leader>tl :TestLast<CR>

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Set cwd to current git repository
au BufLeave * let b:last_cwd = getcwd()
au BufEnter * if exists('b:last_cwd')
           \|   execute 'lcd' b:last_cwd
           \| else
           \|   silent! Glcd
           \| endif
