" Plugins are added with :packadd, so we require a recent version of Vim
if v:version < 800 && !has('nvim-0.3.7')
    echoerr "Configuration requires at least Vim 8 or Neovim 0.3.7"
    finish
endif

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

""" {{{ LanguageClient-neovim
let g:LanguageClient_changeThrottle = 0.5
let g:LanguageClient_useFloatingHover = 1

let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ 'c': ['clangd'],
\ 'cpp': ['clangd'],
\ }

nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
""" }}}

""" {{{ Define colors for highlighting matching braces

" Avoid that it looks like the cursor jumped due to bad highlighting.
" See https://stackoverflow.com/a/50087070/436853
hi MatchParen ctermfg=208 ctermbg=bg
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
