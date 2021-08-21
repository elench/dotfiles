call plug#begin(stdpath('data') . '/plugged')

Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs', {'for': ['c', 'javascript', 'cpp', 'java', 'go', 'rust', 'python']}

" Colorschemes
Plug 'crusoexia/vim-monokai'
Plug 'morhetz/gruvbox'
"Plug 'srcery-colors/srcery-vim'
Plug 'joshdick/onedark.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'dracula/vim', {'as': 'dracula'}

" General Dev
"Plug 'neovim/nvim-lsp'
"Plug 'Shougo/deoplete-lsp'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Clojure
Plug 'Olical/conjure', {'tag': 'v4.2.0'}
Plug 'clojure-vim/async-clj-omni'
Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release'}

" C++
Plug 'deoplete-plugins/deoplete-clang'

" Rust
Plug 'rust-lang/rust.vim'


call plug#end()

"lua require'nvim_lsp'.rust_analyzer.setup{}

" -- Deoplete --
let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('keyword_patterns', {'clojure': '[\w!$%&*+/:<=>?@\^_~\-\.#]*'})

" close preview window on leaving the insert mode
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" General
set number relativenumber
"colorscheme vim-monokai-tasty
colorscheme gruvbox
"colorscheme dracula

" Spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Search
set ignorecase

" VIM-AIRLINE
let g:airline_theme='monokai_tasty'
let g:airline_powerline_fonts = 1


" Consider all .yar/.yara files to be YARA files.
autocmd BufNewFile,BufRead *.yar,*.yara setlocal filetype=yara

" ------------------------------MAPS--------------------------------
" Buffer traversing
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
" Move between tabs quickly
nnoremap tp :tabprev<CR>
nnoremap tn :tabnext<CR>
nnoremap te :tabnew<CR>
nnoremap tc :tabclose<CR>
"nnoremap th :tabprev<CR>
"nnoremap tl :tabnext<CR>
"nnoremap tn :tabnew<CR>
"nnoremap tc :tabclose<CR>

" Copy to clipboard
nnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
vnoremap <leader>y "+y
" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
