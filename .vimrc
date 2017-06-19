"Misc mechanical
set number
set tags=./tags;
let &path = getcwd() . '/**'
se mouse+=a
set tabstop=3
set softtabstop=3

"color schemes
syntax enable
set background=light
set t_Co=256
"colorscheme breezy
highlight Normal ctermbg=none
highlight nonText ctermbg=none
highlight lineNr ctermfg=grey
highlight Search cterm=NONE ctermfg=white ctermbg=yellow
let g:impact_transbg=1

"start of external plugin section

"for pathogen bundle
execute pathogen#infect()

"for airline
set laststatus=2 

"for yankring
let g:yankring_history_dir= '/tmp'

"for c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1


"general key bindings
inoremap jj <Esc>
