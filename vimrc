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
set laststatus=2
set noesckeys
set clipboard=unnamed

set ignorecase

" no swap
set nobackup
set nowritebackup
set noswapfile

filetype indent on
filetype on
filetype plugin on

" ------------------------------MAPS--------------------------------
" Buffer traversing
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
" Move between tabs quickly
nnoremap tp :tabprev<CR>
nnoremap tn :tabnext<CR>
nnoremap te :tabnew<CR>
nnoremap tc :tabclose<CR>
" Copy to clipboard
nnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
vnoremap <leader>y "+y
" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
" Delete buffer without closing window
nnoremap <C-c> :bp\|bw #<CR>

" clear search highlight
nnoremap <silent> <C-l> :noh<CR><C-l>

" Insert newline without entering insert mode
noremap <CR> o<Esc>
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

" **************************************************************
" COLOR SCHEME

" syntax enable
" colorscheme solarized
syntax on
"colorscheme gruvbox
"set background=dark
"colorscheme molokai
"colorscheme vimterial_dark
" colorscheme onedark
"colorscheme Monokai-Refined
"highlight Normal ctermbg=None
