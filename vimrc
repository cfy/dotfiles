" More love for vim, less for vi
set nocompatible
" Give me some syntax love
syntax enable
filetype plugin on
" fuzzy it all
set path+=**
" nice menus
set wildmenu
" gimme some tags
command! MakeTags !ctags -R .

" netrw options
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


" my input

" INTERFACE
set number
set ruler
set showcmd

" flip invisible characters
set listchars=tab:→\ ,trail:.,eol:¬
set list

" backspace in insert mode
set backspace=indent,eol,start

" search
set incsearch
set hlsearch
set ignorecase
set smartcase



" FILES
" avoid swap files
set noswapfile
" relaod files changed
set autoread



