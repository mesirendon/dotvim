" Load bundled plugins {{{1
call pathogen#infect()
call pathogen#helptags()

" Set mapleader
let mapleader = "\\"
let g:EasyMotion_leader_key = '<Leader>'

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

autocmd vimenter * NERDTree

let Tlist_Use_Right_Window = 1

map <F3> :NERDTreeToggle<CR><CR>
map <F4> :TlistToggle<CR><CR>

filetype plugin on
filetype indent on

" Latex support
set runtimepath+=/usr/share/vim/addons
set grepprg=grep\ -nH\ $*
let g:tex_flavor="latex"
let g:Tex_CompileRule_pdf="pdflatex -interaction=nonstopmode $*"

" Highlight syntax
syntax enable

set hidden

let g:solarized_termcolors=256
if has('gui_running')
    if has('gui_gtk2')
        set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 10
    endif
    set background=light
    colorscheme sift
else
    colorscheme xoria256
endif

" Use Vim settings, rather than Vi settings
set nocompatible

" Set modifiable to allow nerdtree doing stuff in folders
set modifiable

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <Up>    :wincmd k<CR>
nmap <silent> <Down>  :wincmd j<CR>
nmap <silent> <Left>  :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>

" Move tabs with alt + left|right
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Get out of my realm
"nnoremap <Left>  :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up>    :echoe "Use k"<CR>
"nnoremap <Down>  :echoe "Use j"<CR>

" Tab maps
if version >= 700
    map <C-S-F12> <Esc>:tabnew<CR>
    map <C-F12> <Esc>:tabclose<CR>
endif

" Turn on line numbers
set number
set numberwidth=5

" Tabs are displayed as 4 characters wide
set tabstop=4

" Indentation is 4 spaces
set shiftwidth=4

" Insert 4 spaces instead of tabs
"set expandtab

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
set cmdheight=3

" Some nice colorscheme
" colors evening
"
" Make constants readable on projector as well
" highlight Constant ctermbg=black ctermfg=green

" Always highlight tabs and trailing spaces.
set list
set listchars=tab:\|\ ,trail:.,nbsp:.

" Always assume Unix-style line endings
set fileformats=unix

" Disabling vim swap files
set noswapfile

