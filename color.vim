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
  set guifont=Ubuntu\ mono:h18
  set noerrorbells
  set novisualbell
  set t_vb=
  autocmd! GUIEnter * set vb t_vb=
endif

" Startify
hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147 guifg=#ff0000
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114 guifg=#ff00ff
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240
