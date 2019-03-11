runtime macros/matchit.vim

" NERDTree
command! E NERDTree
command! F NERDTreeFind
let NERDTreeQuitOnOpen=1

" CtrlP
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files=0
let g:ctrlp_use_caching=0
let g:ctrlp_user_command = 'rg --files --no-ignore-vcs --hidden %s'
nnoremap <c-b> :CtrlPBuffer<cr>

" Ack
let g:ackprg = 'rg --vimgrep --no-ignore-vcs --hidden'
nnoremap <leader>/ :Ack!<space>
nnoremap K :Ack! <C-R><C-W><cr>
vnoremap K y:Ack! <C-R>"<CR><cr>

" Fix white spaces
nnoremap <leader>ws :FixWhitespace<cr>

" Git Gutter
set updatetime=100
nmap [h <plug>GitGutterPrevHunk
nmap ]h <plug>GitGutterNextHunk

" Vim Test
let test#strategy = "dispatch"
nnoremap <silent> <Leader>rc :TestFile<CR>
nnoremap <silent> <Leader>rn :TestNearest<CR>
nnoremap <silent> <Leader>rl :TestLast<CR>

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Set cwd to current git repository
au BufLeave * let b:last_cwd = getcwd()
au BufEnter * if exists('b:last_cwd')
           \|   execute 'lcd' b:last_cwd
           \| else
           \|   silent! Glcd
           \| endif
