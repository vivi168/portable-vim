runtime macros/matchit.vim

" NERDTree
nnoremap <c-t> :NERDTreeToggle<cr>
nnoremap <c-f> :NERDTreeFind<cr>
let NERDTreeQuitOnOpen=1

" FZF
nnoremap <leader>f :Files<cr>
nnoremap <leader>hi :History<cr>
nnoremap <c-b> :Buffers<cr>
nnoremap <Leader>s :Rg<space>

" Rg
nnoremap K :Rg <C-R><C-W><cr>
vnoremap K y:Rg <C-R>"<CR><cr>

" Fix white spaces
nnoremap <leader>ws :FixWhitespace<cr>

" Git Gutter
set updatetime=100
nmap [h <plug>GitGutterPrevHunk
nmap ]h <plug>GitGutterNextHunk

" Vim Rspec
nnoremap <leader>rn :call RunNearestSpec()<CR>
nnoremap <leader>rc :call RunCurrentSpecFile()<CR>
nnoremap <leader>rl :call RunLastSpec()<CR>

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
