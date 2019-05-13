execute pathogen#infect()

filetype plugin indent on
syntax on
set nocompatible

""" {{{ Mappings

" Source current vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>

" Trigger dirvish
nnoremap <F3> :Dirvish<CR>

" Trigger UndoTree
nnoremap <F6> :UndotreeToggle<CR>

""" }}}

""" {{{ Style
set shiftwidth=4
set relativenumber
colorscheme molokai
""" }}}
