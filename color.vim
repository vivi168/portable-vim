" Colors
syntax enable

if exists('+termguicolors')
  set termguicolors
end

set background=dark

let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1
let g:gruvbox_sign_column='bg0'
let g:gruvbox_vert_split='bg1'

colorscheme gruvbox
let g:lightline = { 'colorscheme': 'gruvbox' }
