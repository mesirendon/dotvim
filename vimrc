" Load bundled plugins {{{1
call pathogen#infect()
call pathogen#helptags()

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

let mapleader = 'º'

autocmd vimenter * NERDTree

let Tlist_Use_Right_Window = 1

map <F3> :NERDTreeToggle<CR><CR>
map <F4> :TlistToggle<CR><CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

filetype plugin on

set hidden
set number
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme xoria256 
