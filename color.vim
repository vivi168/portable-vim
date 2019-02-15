" Colors
syntax enable
if !has("gui_running")
  se t_Co=256
end
if exists('+termguicolors')
  set termguicolors
end
set background=dark

let g:nord_italic=1
let g:nord_italic_comments=1
let g:nord_comment_brightness=12
let g:nord_uniform_diff_background=1

colorscheme nord
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste', 'readonly' ],
      \             [ 'filename', 'gitbranch', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
