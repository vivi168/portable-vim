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
  Plug 'https://github.com/vim-ruby/vim-ruby'
  Plug 'https://github.com/tpope/vim-rails'
  Plug 'https://github.com/tpope/vim-dadbod'
  Plug 'https://github.com/w0rp/ale'

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
  Plug 'https://github.com/itchyny/lightline.vim'
  Plug 'https://github.com/junegunn/goyo.vim'
call plug#end()

" Leader mapped to Space
let mapleader = "\<Space>"
nnoremap <space> <nop>

" Colors
syntax enable
if !has("gui_running")
  se t_Co=256
end
if exists('+termguicolors')
  set termguicolors
end
set background=light
colorscheme seoul256-light
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

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
runtime macros/matchit.vim

" Buffers
se splitright
se splitbelow
se diffopt+=vertical

nnoremap <tab> :b#<cr>

" NERDTree
nnoremap <c-t> :NERDTreeToggle<cr>
nnoremap <c-f> :NERDTreeFind<cr>
let NERDTreeQuitOnOpen=1

" FZF
nnoremap <leader>f :Files<cr>
nnoremap <leader>hi :History<cr>
nnoremap <c-b> :Buffers<cr>

if executable('rg')
  nnoremap <Leader>s :Rg<space>
else
  let g:ackprg = 'git grep -n'

  nnoremap <Leader>s :Ack!<Space>
end

" Fix white spaces
nnoremap <leader>ws :FixWhitespace<cr>

" Git Gutter
set updatetime=100
nmap [h <plug>GitGutterNextHunk
nmap ]h <plug>GitGutterPrevHunk

" ALE
nmap <silent> [l <Plug>(ale_previous_wrap)
nmap <silent> ]l <Plug>(ale_next_wrap)
nmap <silent> <leader>l <Plug>(ale_detail)

" Movements
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Quickfix window
nmap <leader>q :ccl<cr>

" GUI options
if has("gui_running")
  set guioptions=
  set guifont=Courier:h14
  set noerrorbells
  set novisualbell
  set t_vb=
  autocmd! GUIEnter * set vb t_vb=
endif
