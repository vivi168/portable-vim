" Leader mapped to Space
let mapleader = "\<Space>"
nnoremap <space> <nop>

nnoremap <tab> :b#<cr>
nnoremap <leader>l :noh<cr>

" Movements
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

" Quickfix window
nmap <leader>q :ccl<cr>

" Terminal
nnoremap <leader>t :tab terminal<cr>
nnoremap <leader>' :terminal<cr>
nnoremap <leader>% :vert terminal<cr>
