" Leader mapped to Space
let mapleader = "\<Space>"
nnoremap <space> <nop>

nnoremap <tab> :b#<cr>
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>l :noh<cr>

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

" Terminal
nnoremap <leader>' :terminal<cr>
nnoremap <leader>% :vert terminal<cr>
tnoremap <c-h> <c-w>h
tnoremap <c-j> <c-w>j
tnoremap <c-k> <c-w>k
tnoremap <c-l> <c-w>l
