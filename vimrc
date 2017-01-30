syntax on
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
hi Normal ctermbg=none
hi nonText ctermbg=NONE
execute pathogen#infect()
filetype plugin indent on
let mapleader = ','


"settings


set nocompatible
set autoread
set backspace=indent,eol,start

set ignorecase
set smartcase
set hlsearch
set incsearch
set nolazyredraw
set magic
set showmatch
set mat=2
set encoding=utf8
set autoindent
set smartindent
set laststatus=2
set ttyfast
set noexpandtab
set smarttab
set tabstop=3
set softtabstop=3
set shiftwidth=3
set shiftround
set clipboard=unnamed
set number
set tags=./tags;/


set path=$PWD/**

let g:lightline = {
	\ 'colorscheme': 'breezy',
   \ }

let g:airline_theme='breezy'


"key mappings
map<leader>rc :e! ~/.vimrc<cr>
map <leader>wc :windcmd q<cr>

noremap <silent>j gj
noremap <silent> k gk

map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<cr>
nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$'
            \ }



nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-P> <Plug>yankstack_substitute_newer_paste
