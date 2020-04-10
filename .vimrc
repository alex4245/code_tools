set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'  " git
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-eunuch'

Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'posva/vim-vue'

Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'itchyny/lightline.vim'

call vundle#end()

autocmd BufWritePost *.py call Flake8()

filetype plugin indent on
filetype plugin on
filetype on

syntax on
set t_Co=256
colorscheme dracula

set laststatus=2

set nu
set showmode
set showcmd

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" " Enable use of the mouse for all modes
set mouse=r
set clipboard=unnamedplus
"

" " Use win + <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
"
" " Indentation settings for using 4 spaces instead of tabs.
" " Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=5
set softtabstop=4
set expandtab
"
" " Highlight matching search patterns
set hlsearch
"
" " Enable incremental search
set incsearch
set statusline+=%F

let g:ctrlp_custom_ignore = '*.pyc'
let g:lightline = {'colorscheme': 'seoul256',}

map <C-o> :NERDTreeToggle<CR>
