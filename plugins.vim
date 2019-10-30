runtime macros/matchit.vim

" NERDTree
command! E NERDTreeToggle
command! F NERDTreeFind
let NERDTreeQuitOnOpen=1

" FZF
nnoremap <c-f> :Files<cr>
nnoremap <c-b> :Buffers<cr>
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \ "rg --vimgrep --no-ignore-vcs --hidden --smart-case --color=always ".<q-args>, 1, <bang>0
      \ )
nnoremap <leader>/ :Rg<space>
nnoremap K :Rg <C-R><C-W><cr>
vnoremap K y:Rg <C-R>"<CR><cr>

" Fix white spaces
nnoremap <leader>ws :FixWhitespace<cr>

" Git Gutter
set updatetime=100
nmap [h <plug>GitGutterPrevHunk
nmap ]h <plug>GitGutterNextHunk

" YAML
let g:vim_yaml_helper#auto_display_path = 0

" Vim Test
nnoremap <silent> <Leader>rc :TestFile<CR>
nnoremap <silent> <Leader>rn :TestNearest<CR>
nnoremap <silent> <Leader>rl :TestLast<CR>
" let test#strategy = "dispatch"

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
