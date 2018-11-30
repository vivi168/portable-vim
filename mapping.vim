" Leader mapped to Space
let mapleader = "\<Space>"
nnoremap <space> <nop>

nnoremap <tab> :b#<cr>

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
nmap <leader>q :ccl<cr>
