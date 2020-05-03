let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"
endif

call plug#begin('~/.config/nvim/plugged')

" git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" fuzzy search
set rtp+=/usr/local/opt/fzf
Plug 'junegunn/fzf.vim'

" syntax highlighting and indentation
Plug 'sheerun/vim-polyglot'

" appearance and themes
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'

" autocompletion, linting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'SirVer/ultisnips'

" markdown viewer
Plug 'chemzqm/macdown.vim'

" utilities
Plug 'airblade/vim-rooter'
Plug 'moll/vim-bbye'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'luochen1990/rainbow'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'psliwka/vim-smoothie'
Plug 'ryanoasis/vim-devicons'
call plug#end()
