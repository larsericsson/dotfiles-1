" general
let mapleader = ','
set encoding=utf-8
set showcmd
set cursorline
set colorcolumn=80
set relativenumber  " generally, use relative line numbers
set number  " for current row, use absolute line number
set timeoutlen=500
set ignorecase
set title
set titlestring=%F
set nowrap

" prefer spaces over tabs, four spaces per indentation
set tabstop=2
set shiftwidth=2
set et

" color theme config
if exists('g:plug_home') && isdirectory(g:plug_home . '/vim-colors-solarized')
  colorscheme solarized
  set background=dark
else
  echom 'WARNING: Can''t set "solarized" as colorscheme since that plugin doesn''t appear to be installed'
endif

" hidden characters config
" - define hidden characters
set listchars=tab:▸\ ,eol:¬
" - hide hidden characters by default
set nolist

" set more natural splits
set splitbelow
set splitright

" set proper formatting to JSON file comments
autocmd FileType json syntax match Comment +\/\/.\+$+
