" Leader mapped to Space
let mapleader = "\<Space>"
nnoremap <space> <nop>

nmap [b :bp<cr>
nmap ]b :bn<cr>
nmap [q :cprev<cr>
nmap ]q :cnext<cr>
command! O :copen
command! Q :ccl

nnoremap <tab> :b#<cr>
nnoremap <leader>l :noh<cr>

command! W :w
nnoremap Q @q

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
nnoremap <leader>/ :grep<space>
nnoremap K :grep '\b<cword>\b'<cr>
vnoremap K y:grep '<C-R>"'<cr>
