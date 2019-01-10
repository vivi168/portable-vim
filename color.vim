" Colors
syntax enable
if !has("gui_running")
  se t_Co=256
end
if exists('+termguicolors')
  set termguicolors
end
set background=light
colorscheme seoul256-light
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
