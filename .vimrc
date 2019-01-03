set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}



"Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'scrooloose/nerdcommenter'
Plugin 'plasticboy/vim-markdown'

" Plugin 'vim-scripts/AutoComplPop'
Plugin 'ervandew/supertab'
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

colorscheme molokai
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline "config font for gvim  ”for gvi
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbos = {}
endif
syntax on "syntax support
set laststatus=2 "show status bar to enable powerline
set tabstop=2 
set softtabstop=2 
set shiftwidth=2 
set expandtab 
" set smarttab 
set autoindent 
set smartindent 
set number 
set ruler 
set backupdir=/tmp 
set directory=/tmp 
set ignorecase 
set hls "highlight when searching
set backspace=2
"set foldmethod=syntax 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

map <F3> :NERDTreeToggle<CR>

if has("gui_macvim")
  set columns=160 lin e=53
endif

syntax enable
set background=dark
colorscheme solarized

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
