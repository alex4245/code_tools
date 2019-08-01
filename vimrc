" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
" :PluginInstall
call vundle#begin()

Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-fugitive'

Plugin 'altercation/vim-colors-solarized'

Plugin 'Valloric/YouCompleteMe'

Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

filetype plugin indent on

" colorscheme
syntax enable
set background=dark
colorscheme solarized

set nu
set showmode
set showcmd

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Enable use of the mouse for all modes
" set mouse=a

" Use win + <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch
