" Leader mapped to Space
let mapleader = "\<Space>"
nnoremap <space> <nop>

nmap [c :cprev<cr>
nmap ]c :cnext<cr>
nmap [b :bp<cr>
nmap ]b :bn<cr>
nnoremap <tab> :b#<cr>
nnoremap <leader>l :noh<cr>

command! W :w
nnoremap Q <nop>

" Movements
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Quickfix window
nmap <leader>q :ccl<cr>

" Terminal
nnoremap <leader>t :tab terminal<cr>
nnoremap <leader>' :terminal<cr>
nnoremap <leader>% :vert terminal<cr>
