se nocompatible
filetype plugin indent on

" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)
" what is the name of the directory containing this file?
let s:portable = expand('<sfile>:p:h')
" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after', s:portable, &runtimepath, s:portable)

call plug#begin(s:portable.'/plugged')
"call plug#begin()
  Plug 'https://github.com/tpope/vim-sensible'
  Plug 'https://github.com/tpope/vim-fugitive'
  Plug 'https://github.com/tpope/vim-surround'
  Plug 'https://github.com/ctrlpvim/ctrlp.vim'
  Plug 'https://github.com/ervandew/supertab'
  Plug 'https://github.com/junegunn/vim-easy-align'
  Plug 'https://github.com/bronson/vim-trailing-whitespace'
  Plug 'https://github.com/altercation/vim-colors-solarized'
  Plug 'https://github.com/vim-airline/vim-airline'
  Plug 'https://github.com/vim-airline/vim-airline-themes'
  Plug 'https://github.com/airblade/vim-gitgutter'
  Plug 'https://github.com/terryma/vim-multiple-cursors'
  Plug 'https://github.com/scrooloose/nerdtree'
call plug#end()

" Leader mapped to Space
let mapleader = "\<Space>"
nnoremap <space> <nop>

" Colors
syntax enable
se t_Co=256
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" Tabs
se tabstop=2 "tab width
se shiftwidth=2 "ident width (<< >> ==)
se expandtab "insert tabs as spaces

" Files
se encoding=utf8
se ffs=unix
se nobackup
se nowb
se noswapfile

" Visual
se rnu
se cursorline
se nowrap
se laststatus=2
let g:airline_powerline_fonts=1
se showcmd
se ruler
se title
se mouse=

" Search
se hlsearch
se incsearch

se showmatch
runtime macros/matchit.vim

nmap & :Ggrep! <c-r>=expand("<cword>")<cr><cr>
nmap <leader>/ :Ggrep!<space>
autocmd QuickFixCmdPost *grep* cwindow

" Buffers
se splitright
se splitbelow
se diffopt+=vertical

function SwitchBuffer()
  b#
endfunction
nmap <tab> :call SwitchBuffer()<cr>

" NERDTree
map <c-t> :NERDTreeToggle<cr>

" CtrlP
let g:ctrlp_map = '<leader>o'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode='r'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_user_command = 'find %s -type f'
set wildignore+=*/tmp/*,*/var/*,*/log/*,*/media/*,*/vendor/gems/*,*.so,*.swp,*.zip
nmap <leader>b :CtrlPBuffer<cr>

" Fix white spaces
nmap <leader>ws :FixWhitespace<cr>

" Easy Align
xmap ga <plug>(EasyAlign)
nmap ga <plug>(EasyAlign)

" Movements
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l

nmap j gj
nmap k gk

