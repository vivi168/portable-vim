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
  Plug 'https://github.com/tpope/vim-repeat'
  Plug 'https://github.com/tpope/vim-surround'
  Plug 'https://github.com/tpope/vim-commentary'
  Plug 'https://github.com/tpope/vim-rails'
  Plug 'https://github.com/ctrlpvim/ctrlp.vim'
  Plug 'https://github.com/ervandew/supertab'
  Plug 'https://github.com/junegunn/vim-easy-align'
  Plug 'https://github.com/bronson/vim-trailing-whitespace'
  Plug 'https://github.com/joshdick/onedark.vim'
  Plug 'https://github.com/vim-airline/vim-airline'
  Plug 'https://github.com/vim-airline/vim-airline-themes'
  Plug 'https://github.com/airblade/vim-gitgutter'
  Plug 'https://github.com/easymotion/vim-easymotion'
  Plug 'https://github.com/terryma/vim-multiple-cursors'
  Plug 'https://github.com/scrooloose/nerdtree'
  Plug 'https://github.com/nathanaelkane/vim-indent-guides'
call plug#end()

" Leader mapped to Space
let mapleader = "\<Space>"
nnoremap <space> <nop>

" Colors
syntax enable
se t_Co=256
set background=dark
let g:onedark_termcolors=256
colorscheme onedark

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

nnoremap <leader>w :w<cr>
nnoremap <leader>e :e<space>

" Visual
se cursorline
se nu
se wrap
se linebreak
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

nnoremap @ :silent Ggrep! <c-r>=expand("<cword>")<cr><cr>
nnoremap <leader>/ :silent Ggrep!<space>
autocmd QuickFixCmdPost *grep* cwindow
autocmd QuickFixCmdPost *grep* redraw!

" Buffers
se splitright
se splitbelow
se diffopt+=vertical

" Buffer
nnoremap <tab> :b#<cr>

" NERDTree
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<cr>
let NERDTreeQuitOnOpen=1

" CtrlP
let g:ctrlp_map = '<leader>o'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode='r'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_user_command = ['.git', 'git ls-files -co --exclude-standard %s', 'find %s -type f']
let g:ctrlp_match_window = 'results:100'
nnoremap <leader><tab> :CtrlPBuffer<cr>
nnoremap <leader>r :CtrlPMRUFiles<cr>

" Fix white spaces
nnoremap <leader>ws :FixWhitespace<cr>

" Easy Align
xmap ga <plug>(EasyAlign)
nmap ga <plug>(EasyAlign)

" Surround
nmap <leader>ss ysiw
nmap <leader>SS ysiW

" Git Gutter
nmap <leader>n <plug>GitGutterNextHunk
nmap <leader>p <plug>GitGutterPrevHunk
nmap <leader>a <plug>GitGutterStageHunk
nmap <leader>u <plug>GitGutterUndoHunk

" Movements
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap j gj
nnoremap k gk

" Easier Easy Motion
nmap w <Plug>(easymotion-w)
nmap b <Plug>(easymotion-b)
nmap e <Plug>(easymotion-e)
nmap ge <Plug>(easymotion-ge)
nmap W <Plug>(easymotion-W)
nmap B <Plug>(easymotion-B)
nmap E <Plug>(easymotion-E)
nmap gE <Plug>(easymotion-gE)
nmap f <Plug>(easymotion-f)
nmap F <Plug>(easymotion-F)
nmap t <Plug>(easymotion-t)
nmap T <Plug>(easymotion-T)

" Quickfix window
nmap q :ccl<cr>

" Indent Guide
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236
