" Set compatibility to Vim only.
set nocompatible

" Enable file type detection/plugin loading/indent file loading
filetype plugin indent on

" Turn on syntax highlighting
syntax on

" Set up color scheme
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
set background=dark

" Set up font for GUI
if has('gui_running')
    set guifont=FiraMono-Medium:h13
endif

" Encoding
set encoding=utf-8

" Show line numbers
set number

" Show current location
set ruler

" Always show status bar
set laststatus=2

" Automatically wrap text that extends beyond the screen length
set wrap

" Copy indent from current line when starting a new line
set autoindent

" Automatically insert indents
set smartindent

" Allow backspacing over line breakers/start of insert/autoindent
set backspace=eol,start,indent

" Display whitespace chareacters
set list

" Speed up scrolling in vim
set ttyfast

" Set to auto-read when a file is changed outside vim
set autoread

" Use spaces instead of tabs
set expandtab
set smarttab

" Indent = 4 spaces
set shiftwidth=4

" Tab = 4 spaces
set tabstop=4

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Col:\ %c

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase word with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function!  HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

