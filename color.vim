" Colors
syntax enable

if exists('+termguicolors')
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
end

let g:gruvbox_italic=0
let g:gruvbox_italicize_comments=0
let g:gruvbox_sign_column='bg0'
let g:gruvbox_vert_split='bg1'

colorscheme gruvbox
