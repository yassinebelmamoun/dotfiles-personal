filetype off

call plug#begin('~/.vim/plugged')
" plugins here

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yuttie/comfortable-motion.vim'
Plug 'flazz/vim-colorschemes'
Plug 'chrisbra/NrrwRgn'
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Syntax
Plug 'dense-analysis/ale'

" Git plugins
Plug 'tpope/vim-fugitive'

" Other
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'

" Python plugins
Plug 'tmhedberg/SimpylFold'

" Must load last
Plug 'ryanoasis/vim-devicons'

call plug#end()

" ------ Basics
syntax on " Enable syntax highlighting
filetype on " Enable filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugins
set clipboard=unnamed

set encoding=UTF-8
set mouse=a
set rnu " Enable relative line numbers
set noswapfile
set nolist
set novb
set colorcolumn=80

" Set the leader key
:let mapleader = ","

" Set line numbering, shift width
set number
set tabstop=2
set expandtab
set shiftwidth=2
set cursorline " Enable highlight in the current line

" Enable 256-color by default in the terminal
if !has('gui_running') | set t_Co=256 | endif

" Split directions
set splitbelow
set splitright

" Save file
nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>
noremap <leader>q :q<cr>
noremap <leader>qe :q!<cr>

" Search
set incsearch
set ignorecase
set hlsearch

" Folding
let g:SimpylFold_docstring_preview=1


" --- VISUAL
set guifont=font-hack-nerd-font:h11 " guifont
colorscheme molokai

" --- END VISUAL

" --- BEGIN MAPPING

" remap ESC
:inoremap kj <esc>

" Split Navigation (with ctrl)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tabs Navigation (with shift)
noremap <S-l> gt
noremap <S-h> gT

" Folding
nnoremap <space> za

" Other
nnoremap ; :

" --- END MAPPING


" --- PLUGINS

" NERDTree Plugin
nnoremap  <Leader>n  :NERDTreeFind<CR>
nnoremap <silent> <Leader>f :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1 " Show hidden files e.g. .vimrc
let NERDTreeIgnore = ['\.swp$'] " Hide the temp .swp files created by vim
" let NERDTreeQuitOnOpen=1

" Airline Plugin
let g:airline_theme='understated'
let g:airline_powerline_fonts = 1

" Nerdtree Plugin
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDCommentEmptyLines = 1 " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1 " Enable NERDCommenterToggle to check all selected lines is commented or not

" Comfortable motion
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

" JamshedVesuna/vim-markdown-preview Plugin
let vim_markdown_preview_hotkey='<c-m>'

" syntatic
let python_highlight_all=1

" Ale
let g:ale_python_auto_pipenv=1
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_args = '-m flake8'
let g:ale_python_pylint_options = '--load-plugins pylint_django'

" --- END PLUGINS

" --- Automated
autocmd BufWritePre * :%s/\s\+$//e " Delete trailing whitespace on lines


" python
if has('python3')
  silent! python3 1
endif
