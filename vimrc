" Load bundled plugins {{{1
call pathogen#infect()
call pathogen#helptags()

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

autocmd vimenter * NERDTree

map <F3> :NERDTreeTabsToggle<CR>

set hidden
set number
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized
