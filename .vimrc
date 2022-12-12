
" MISC -----------------------------------------------------------------{{{

" Don't try to be vi compatible
set nocompatible
  
" Helps force plugins to load correctly when it is turned back on below
filetype off

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Blink cursor on error instead of beeping (grr)
set visualbell

" Rendering
set ttyfast

" Allow hidden buffers
set hidden

" }}}


" CURSOR MOTION --------------------------------------------------------{{{

set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" }}}


" MAPPINGS -------------------------------------------------------------{{{

" Map leader key
let mapleader=","

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" }}}


" UI -------------------------------------------------------------------{{{

" Turn on syntax highlighting
syntax on

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Show line numbers
set number
set numberwidth=4

" Show file stats
set ruler

" }}}


" FOLDING ---------------------------------------------------------------{{{
"
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}


" SEARCHING -------------------------------------------------------------{{{
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search
" }}}


" FORMATING ------------------------------------------------------------{{{

" Encoding
set encoding=utf-8

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Lines don't wrap
set nowrap

" Formating options(refer to documentation)
set formatoptions=tcqrn1

" Sets tab size
set tabstop=2

" Sets shift size
set shiftwidth=2

" Number of spaces that a tab creates
set softtabstop=2

" Tabs are made with spaces
set expandtab

" Round ident to multiple of shiftwidth
set shiftround

" }}}


" TRUE COLOR -----------------------------------------------------------{{{

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" }}}


" COLOR SCHEME ---------------------------------------------------------{{{

autocmd vimenter * ++nested colorscheme gruvbox
set background=dark


" }}}


" VIM-PLUG AUTO SETUP --------------------------------------------------{{{

" Install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" }}}


" AIRLINE CONFIG -------------------------------------------------------{{{
  
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'

" }}}


" PLUGINS ---------------------------------------------------------------{{{

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" }}}

