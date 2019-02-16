runtime macros/matchit.vim

" NERDTree
nnoremap <c-t> :NERDTreeToggle<cr>
nnoremap <c-f> :NERDTreeFind<cr>
let NERDTreeQuitOnOpen=1

" CtrlP
let g:ctrlp_map = '<leader>f'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'rg --files --no-ignore-vcs --hidden %s'
nnoremap <leader>hi :CtrlPMRUFiles<cr>
nnoremap <c-b> :CtrlPBuffer<cr>

" Ack
let g:ackprg = 'rg --vimgrep --no-ignore-vcs --hidden'
nnoremap <leader>s :Ack!<space>
nnoremap K :Ack! <C-R><C-W><cr>
vnoremap K y:Ack! <C-R>"<CR><cr>

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
