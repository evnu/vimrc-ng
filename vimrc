runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

filetype plugin indent on
syntax on
set nocompatible
set noswapfile
set undofile
set undodir=~/.vim_undodir

""" {{{ Mappings
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>d :Dirvish<cr>
nnoremap <leader>u :UndotreeToggle<cr>
nnoremap <leader>st :Gstatus<cr>
nnoremap <leader>ff :FZF<cr>
nnoremap <leader>fg :GFiles<cr>
nnoremap <leader>fs :GFiles?<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <esc><esc> :<c-u>nohlsearch<cr>
nnoremap <leader>dts :%s/\s\+$//g<cr>
""" }}}

""" {{{ Style
set shiftwidth=4
set number
set relativenumber
set wildmenu
colorscheme molokai
set listchars=tab:>.,trail:.,extends:#,nbsp:.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
""" }}}

""" {{{ augroups
augroup rust
    au!

    au BufWrite *.rs RustFmt
augroup END

augroup elixir
    au!

    au BufEnter *.ex set sw=2
augroup END
"""}}}

""" {{{ vim-markdown
let g:vim_markdown_folding_disabled = 1
""" }}}
