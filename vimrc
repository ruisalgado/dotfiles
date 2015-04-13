runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on

set vb
set clipboard=unnamed
set mouse=a
set nrformats=

map <C-n> :NERDTreeToggle<CR>
