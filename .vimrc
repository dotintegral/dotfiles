
" Display
" *******


" Enable line numbering
set nu

" Enable entered commands display
set showcmd


" Enable syntax coloring
syntax on

" Set ruler (show ROW,COL details)
set ruler


" Set cursor position in the middle
set so=9999


" Input
" ***** 


" Set tab to 4 spaces
set shiftwidth=4
set tabstop=4

" Set automatic indenation
set autoindent

" Use spaces instead of tabs
set expandtab

" Set search highlighting
set hlsearch

" Set line lenght to 80
set textwidth=80

" Change leader key to ','
let mapleader=","


" Key Mapping
" ***********

" Window movement

nnoremap <C-S-H> :wincmd h<CR>
nnoremap <C-S-J> :wincmd j<CR>
nnoremap <C-S-K> :wincmd k<CR>
nnoremap <C-S-L> :wincmd l<CR>

" Buffer movement
nnoremap <C-TAB> :bnext<CR>
nnoremap <C-S-TAB> :bprevious<CR>

" Close buffer without messing windows
nnoremap <C-w> :bp<cr>:bd #<cr>

" Toggle cursor position in the middle of the screen
nnoremap <Leader>zz :let &scrolloff=9999-&scrolloff<CR>

" Toggle relative line numbering
nnoremap <Leader>l :let &rnu=1-&rnu<CR>

" Toggle Nerd Tree Tabs
nnoremap <Leader>b :NERDTreeTabsToggle<CR>

" Open tab alias
nnoremap <C-a> :tabe

" Next tab alias
nnoremap <C-n> :tabn<CR>

" Prev tab alias
nnoremap <C-p> :tabp<CR>

" CtrlP eclipse-like mapping
nnoremap <C-S-r> :CtrlP<CR>


" Plugin settings
" ***************

" NERDTree - change current working directory
let g:NERDTreeChDirMode=2

" CtrlP - working path setting
let g:ctrlp_working_path_mode = 0

" MiniBufferExpl - open always
let g:miniBufExplForceDisplay = 1
" let g:miniBufExplAutoStart = 0

" Functions
" *********


" GUI/Window management 
" *********************

" Set colorscheme
colorscheme twilight

" Set GUI font
set guifont=Ubuntu\ Mono\ 12

" Set Maximalized Window mode
" au GUIEnter * simalt ~x

" Set half sized-window
" winsize 200 57
winsize 232 60

" Remove menu bar
:set guioptions-=m  

" Remove toolbar
:set guioptions-=T 

" Remove right-hand scroll bar
:set guioptions-=r

" Remove left-hand scroll bar
:set guioptions-=L  


" Test
" ****



