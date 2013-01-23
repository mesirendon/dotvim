" Load bundled plugins {{{1
call pathogen#infect()
call pathogen#helptags()

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

set hidden
set number
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized
