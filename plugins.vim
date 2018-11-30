runtime macros/matchit.vim

" NERDTree
nnoremap <c-t> :NERDTreeToggle<cr>
nnoremap <c-f> :NERDTreeFind<cr>
let NERDTreeQuitOnOpen=1

" FZF
nnoremap <leader>f :Files<cr>
nnoremap <leader>hi :History<cr>
nnoremap <c-b> :Buffers<cr>

if executable('rg')
  nnoremap <Leader>s :Rg<space>
else
  let g:ackprg = 'git grep -n'

  nnoremap <Leader>s :Ack!<Space>
end

" Fix white spaces
nnoremap <leader>ws :FixWhitespace<cr>

" Git Gutter
set updatetime=100
nmap [h <plug>GitGutterPrevHunk
nmap ]h <plug>GitGutterNextHunk

" ALE
if v:version >= 800
  nmap <silent> [l <Plug>(ale_previous_wrap)
  nmap <silent> ]l <Plug>(ale_next_wrap)
  nmap <silent> <leader>l <Plug>(ale_detail)
end

" TagBar
if executable('ctags')
  nnoremap <leader>t :TagbarToggle<cr>
end

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
