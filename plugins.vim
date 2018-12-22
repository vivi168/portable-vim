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

" Vim Startify
function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

autocmd User Startified setlocal cursorline

let g:startify_enable_special      = 0
let g:startify_files_number        = 8
let g:startify_relative_path       = 1
let g:startify_change_to_dir       = 1
let g:startify_update_oldfiles     = 1
let g:startify_session_autoload    = 1
let g:startify_session_persistence = 1

let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ 'bundle/.*/doc',
      \ ]

let g:startify_bookmarks = [
      \ ]

let g:startify_custom_header =
      \ startify#fortune#cowsay('', '═','║','╔','╗','╝','╚')
