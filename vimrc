" Load bundled plugins {{{1
call pathogen#infect()
call pathogen#helptags()

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

autocmd vimenter * NERDTree

let Tlist_Use_Right_Window = 1

map <F3> :NERDTreeToggle<CR><CR>
map <F4> :TlistToggle<CR><CR>

filetype plugin on

" Highlight syntax
syntax on

set hidden

let g:solarized_termcolors=256
set background=light
colorscheme 256-grayvim

" Use Vim settings, rather than Vi settings
set nocompatible

" Set modifiable to allow nerdtree doing stuff in folders
set modifiable

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Get out of my realm
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Tab maps
if version >= 700
    map <C-t> <Esc>:tabnew<CR>
    map <C-F4> <Esc>:tabclose<CR>
endif

" Turn on line numbers
set number
set numberwidth=5

" Set mapleader to ç for my Spanish keyboard
let mapleader = 'ç'

" Tabs are displayed as 4 characters wide
set tabstop=4

" Indentation is 4 spaces
set shiftwidth=4

" Insert 4 spaces instead of tabs
set expandtab

" Automatic indentation
set autoindent
set smartindent

" Search while typing pattern
set incsearch

" Highlight search pattern matches
set hlsearch


" Automatically format doxygen style comments
" set comments=sl:/**,mb:\ *,elx:\ */
"
" Insert comment leader when hitting enter in insert mode
" set formatoptions+=r
"
" Insert comment leader when hitting o in normal mode
" set formatoptions+=o
"
" Font name for gVim
" set guifont=Monaco

" Draw a margin in the 81th column
set colorcolumn=81

" Show current line and column numbers
set ruler

" Command line is 2 lines, so it's easier to type complex commands
set cmdheight=2

" Some nice colorscheme
" colors evening
"
" Make constants readable on projector as well
" highlight Constant ctermbg=black ctermfg=green

" Always highlight tabs and trailing spaces.
set list
set listchars=tab:>\ ,trail:.,nbsp:.

" Always assume Unix-style line endings
set fileformats=unix

" Disabling vim swap files
set noswapfile
