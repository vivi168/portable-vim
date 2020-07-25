runtime macros/matchit.vim

" NERDTree
command! E NERDTreeToggle
command! F NERDTreeFind
let NERDTreeQuitOnOpen=1

" FZF
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Rg<cr>
nnoremap <c-b> :Buffers<cr>
nnoremap <leader>c :Commits<cr>
nnoremap <leader>b :BCommits<cr>
nnoremap <leader>g :GFiles?<cr>
nnoremap K :Rg <c-r><c-w><cr>

let g:fzf_preview_window = ''

" Fix white spaces
nnoremap <leader>ws :FixWhitespace<cr>

" YAML
let g:vim_yaml_helper#auto_display_path = 0

" Vim Test
nnoremap <silent> <Leader>rf :TestFile<CR>
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
