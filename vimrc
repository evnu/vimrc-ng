" Plugins are added with :packadd, so we require a recent version of Vim
if v:version < 800 && !has('nvim-0.9.2')
    echoerr "Configuration requires at least Neovim 0.9.2"
    finish
endif

lua require('config')

filetype plugin indent on
syntax on
set nocompatible
set noswapfile
set undofile
set undodir=~/.vim_undodir

set grepprg=rg\ --vimgrep\ --smart-case

packadd cfilter

""" {{{ Mappings
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>D :Dirvish<cr>
nnoremap <leader>u :UndotreeToggle<cr>
nnoremap <leader>st :Gstatus<cr>
nnoremap <leader>ff :FZF<cr>
nnoremap <leader>fg :GFiles<cr>
nnoremap <leader>fs :GFiles?<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <esc><esc> :<c-u>nohlsearch<cr>
nnoremap <leader>dts :%s/\s\+$//g<cr>
nnoremap <leader>rg :silent grep <cword> \| copen<cr>
nnoremap <leader>a :ArgWrap<cr>
nnoremap <leader>tb :TagbarToggle<cr>
nnoremap <leader>todo :execute 'silent Ggrep! TODO' | cw | redraw!
nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>

" Clear the gutter
nnoremap <leader>cg :sign unplace *<cr>

" Insert todays date as RFC 3339
nnoremap <leader>id :r !date --rfc-3339=date<cr>

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
set expandtab
""" }}}

""" {{{ augroups
augroup elixir
    au!

    au BufEnter *.ex set sw=2
augroup END
"""}}}

""" {{{ vim-markdown
let g:vim_markdown_folding_disabled = 1
""" }}}

""" {{{ Define colors for highlighting matching braces
" Avoid that it looks like the cursor jumped due to bad highlighting.
" See https://stackoverflow.com/a/50087070/436853
hi MatchParen cterm=bold ctermfg=208 ctermbg=12 gui=bold guifg=#fd971f guibg=#000000
""" }}}

""" {{{ tagbar
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'p:protocols',
        \ 'm:modules',
        \ 'e:exceptions',
        \ 'y:types',
        \ 'd:delegates',
        \ 'f:functions',
        \ 'c:callbacks',
        \ 'a:macros',
        \ 't:tests',
        \ 'i:implementations',
        \ 'o:operators',
        \ 'r:records'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 'p' : 'protocol',
        \ 'm' : 'module'
    \ },
    \ 'scope2kind' : {
        \ 'protocol' : 'p',
        \ 'module' : 'm'
    \ },
    \ 'sort' : 0
\ }
""" }}}

""" {{{ LanguageClient-neovim
" Disable those awful diagnostic texts
let g:LanguageClient_useVirtualText = 0
""" }}}
