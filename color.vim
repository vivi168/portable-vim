" Colors
syntax enable
if !has("gui_running")
  se t_Co=256
end
if exists('+termguicolors')
  set termguicolors
end
set background=dark
colorscheme nord
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
