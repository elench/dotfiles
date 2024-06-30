set nocompatible

call plug#begin(stdpath('data') . '/plugged')

Plug 'sheerun/vim-polyglot'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs', {'for': ['c', 'javascript', 'cpp', 'java', 'go', 'rust', 'python']}

" fuzzy finder
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'lotabout/skim.vim'

" Colorschemes
Plug 'crusoexia/vim-monokai'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'chriskempson/base16-vim'
Plug 'sainnhe/sonokai'

" General Dev
Plug '/pboettch/vim-cmake-syntax'

" Semantic language support
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp', {'branch': 'main'}
Plug 'hrsh7th/cmp-buffer', {'branch': 'main'}
Plug 'hrsh7th/cmp-path', {'branch': 'main'}
Plug 'hrsh7th/cmp-cmdline', {'branch': 'main'}
Plug 'hrsh7th/nvim-cmp', {'branch': 'main'}

"Plug 'nvim-lua/lsp_extensions.nvim'
"Plug 'ray-x/lsp_signature.nvim'

" Only because nvim-cmp _requires_ snippets
Plug 'hrsh7th/cmp-vsnip', {'branch': 'main'}
Plug 'hrsh7th/vim-vsnip'

" To enable more of the features of rust-analyzer, such as inlay hints and more!
Plug 'simrat39/rust-tools.nvim'

" Syntactic language support
Plug 'rust-lang/rust.vim'
Plug 'rhysd/vim-clang-format'

" Clojure
"Plug 'Olical/conjure', {'tag': 'v4.2.0'}
"Plug 'Olical/conjure'
"Plug 'https://gitlab.com/HiPhish/guile.vim'
"Plug 'https://github.com/gpanders/nvim-parinfer'
"Plug 'https://github.com/wlangstroth/vim-racket'
"Plug 'clojure-vim/async-clj-omni' {'for': ['clojure']}
"Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release'}
"Plug 'https://github.com/guns/vim-sexp'

" Go
"Plug 'fatih/vim-go', { 'do': ':GoUpdateInaries' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'vimwiki/vimwiki'


call plug#end()

set number
" Spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" Search
set ignorecase

au BufNewFile,BufRead *.cmake,CMakeLists.txt set filetype=cmake
autocmd BufNewFile,BufRead *.yar,*.yara setlocal filetype=yara
autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2

" **********************************************************************

let mapleader = "\<Space>"
let maplocalleader = ','

filetype plugin indent on
syntax on

" --------------------------- FZF BEG --------------------------------
nnoremap <C-P> :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>B :Windows<CR>
nnoremap <silent> <leader>m :Marks<CR>
noremap <leader>/ :Rg<CR>

let g:skim_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

"command! -bang -nargs=* Rg
"  \ call fzf#vim#grep(
"  \   'rg --column --line-number --no-heading --color=always '.shellescape(expand('<cword>')), 1,
"  \   <bang>0 ? fzf#vim#with_preview('up:60%')
"  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
"  \   <bang>0)
" --------------------------- FZF END --------------------------------

" Toggle Quickfix
function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

nnoremap <silent> <leader>q :call ToggleQuickFix()<cr>

" close preview window on leaving the insert mode
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" ------------------------------Colors--------------------------------
if has("termguicolors")
    set termguicolors
endif

set background=dark
let base16colorspace=256
let g:base16_shell_path="~/.config/base16-shell/scripts/"
colorscheme gruvbox

" VIM-AIRLINE
let g:airline_theme='base16_material_darker'
let g:airline_powerline_fonts = 1

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

" ------------------------------LSP Configuration--------------------------------
luafile ~/.config/nvim/lsp.lua
set completeopt=menu,menuone,noselect
luafile ~/.config/nvim/nvim-cmp.lua
luafile ~/.config/nvim/treesitter.lua
