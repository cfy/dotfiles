" No compatibility
set nocompatible


" Bootstrap the plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'moll/vim-node'
Plug 'digitaltoad/vim-pug'
call plug#end()


" zero plugin video goodies

" fuzzy it all -- for find
set path+=**
" nice menus
set wildmenu
set showcmd
" gimme some tags
command! MakeTags !ctags -R .

" netrw options
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" My defaults
set number
set tabstop=4 shiftwidth=4
set backspace=indent,eol,start

" files
set autoread
set noswapfile

" the unseen
set list
set listchars=tab:>.,trail:·,eol:¬

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

" syntax specific
syntax enable
filetype plugin indent on
filetype plugin on

" set folds
set foldmethod=indent
set foldnestmax=3
set foldenable

