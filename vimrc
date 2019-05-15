runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

filetype plugin indent on
syntax on
set nocompatible
set noswapfile
set undofile
set undodir=~/.vim/undodir

""" {{{ Mappings
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>d :Dirvish<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>st :Gstatus<CR>
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>fs :GFiles?<CR>
nnoremap <leader>fb :Buffers<CR>
""" }}}

""" {{{ Style
set shiftwidth=4
set relativenumber
set wildmenu
colorscheme molokai
""" }}}

""" {{{ augroups
augroup rust
    au!

    au BufWrite *.rs RustFmt
augroup END
"""}}}
