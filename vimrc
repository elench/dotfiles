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
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 autoindent smarttab expandtab
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.vue set filetype=html
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
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'tomasr/molokai'
Plug 'larsbs/vimterial_dark'
Plug 'alvan/vim-closetag'
call plug#end()
"
"" cntrlp
let g:ctrlp_working_path_mode = 'c'

" **************************************************************
" VIM CLOSETAG
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" **************************************************************
" COLOR SCHEME

" syntax enable
" colorscheme solarized
syntax on
"colorscheme gruvbox
"set background=dark
colorscheme molokai
"colorscheme vimterial_dark
" colorscheme onedark
"colorscheme Monokai-Refined
"highlight Normal ctermbg=None

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
