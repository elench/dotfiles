" default indent settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab
set number
set hlsearch
set incsearch
" set foldmethod=indent
" set foldnestmax=2
set laststatus=2
set noesckeys
set clipboard=unnamed
" set list

set ignorecase

" no swap
set nobackup
set nowritebackup
set noswapfile

filetype indent on
filetype on
filetype plugin on

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType php setlocal shiftwidth=2 tabstop=2 autoindent smarttab expandtab
au BufNewFile,BufRead *.ejs set filetype=html
"set mouse=a
"set ttym=urxvt
"set mousemodel=extend

" nerdtree
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd w

" Delete buffer without closing window
nnoremap <C-c> :bp\|bw #<CR>
" nnoremap <C-c> :bd<CR>

" Buffer traversing
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>

" clear search highlight
nnoremap <silent> <C-l> :noh<CR><C-l>

" saving with ctrl-s instead of :w
" quit all :qa with ctrl-q
nmap <c-s> :w<CR>
imap <c-s> <ESC>:w<CR>
nmap <c-q> :qa<CR>

" Insert newline without entering insert mode
noremap <CR> o<Esc>
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>
" nmap <S-Enter> O<Esc>j
" nmap <CR> o<Esc>k

" ************************************************************
" PLUGINS

" pathogen
execute pathogen#infect()
"
"" cntrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 0

" **************************************************************
" COLOR SCHEME

" syntax enable
" colorscheme solarized
syntax on
"colorscheme gruvbox
"set background=dark
colorscheme molokai
"colorscheme Monokai-Refined
highlight Normal ctermbg=None

" *************************************************************
" VIM-AIRLINE
"
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
" *************************************************************
