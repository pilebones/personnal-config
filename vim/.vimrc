set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" AirLine plugin config
Plugin 'bling/vim-airline'
set laststatus=2
let g:airline_powerline_fonts=1
set t_Co=256
" let g:airline_theme='murmur'
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled=1

" Plugin 'ekalinin/Dockerfile.vim'

" Vim as IDE custom
Plugin 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1
Plugin 'fatih/vim-go'
syntax enable
filetype plugin on
set number
let g:go_disable_autoinstall = 0

Plugin 'jelera/vim-javascript-syntax'

" Highlight
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1
Plugin 'jstemmer/gotags'
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on
au FileType javascript setlocal ts=2 sw=2 sts=2
" au BufNewFile,BufRead *.js setlocal ts=2 sw=2 sts=2
au BufNewFile,BufRead *.sh setlocal ts=8 sw=4 sts=4

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Personnal custom command
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command J :execute ':%!python -m json.tool' | :edit!

set list listchars=tab:»·,trail:·

" Don't need no json.vim, get json syntax highlighting for free
" see: http://www.codeography.com/2010/07/13/json-syntax-highlighting-in-vim.html
" autocmd BufNewFile,BufRead *.json set ft=javascript

" Override color for vimdiff
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red


" Python Bundle
" Bundle 'Valloric/YouCompleteMe'
" let g:ycm_python_binary_path = '/usr/bin/python3'
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
