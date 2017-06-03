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
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"
"" airline
"":let g:airline_theme='badwolf'
":let g:airline_theme='dark'

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
"let g:airline#extensions#whitespace#mixed_indent_algo = 1

" *************************************************************
" CTRL-P
"let g:ctrlp_cmd = 'CtrlP'

"set nowrap
