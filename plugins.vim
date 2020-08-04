runtime macros/matchit.vim

" NERDTree
command! E NERDTreeToggle
command! F NERDTreeFind
let NERDTreeQuitOnOpen=1
let g:NERDTreeNodeDelimiter = "\u00a0"

" CtrlP
let g:ctrlp_user_command = 'rg --files --no-ignore-vcs --hidden'
nnoremap <c-b> :CtrlPBuffer<cr>
nnoremap <c-n> :CtrlPMRU<cr>

" Fix white spaces
nnoremap <leader>ws :FixWhitespace<cr>

" YAML
let g:vim_yaml_helper#auto_display_path = 0

" Vim Test
nnoremap <silent> <Leader>tf :TestFile<CR>
nnoremap <silent> <Leader>tn :TestNearest<CR>
nnoremap <silent> <Leader>tl :TestLast<CR>

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
