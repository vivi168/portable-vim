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
