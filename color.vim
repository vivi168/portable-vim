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

" GUI options
if has("gui_running")
  set guioptions=
  set guifont=Courier:h14
  set noerrorbells
  set novisualbell
  set t_vb=
  autocmd! GUIEnter * set vb t_vb=
endif
