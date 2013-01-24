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

set hidden
set number
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized
