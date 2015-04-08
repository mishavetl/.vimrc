"colorscheme monokai

set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set noswapfile

let g:python_host_prog='/usr/bin/python'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"
" Plugins
"

"Plugin 'Floobits/floobits-vim'
"Plugin 'FredKSchott/CoVim'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'jimenezrick/vimerl'
Plugin 'cwood/vim-django'
Plugin 'jmcantrell/vim-virtualenv'
"Plugin 'elixir-lang/vim-elixir'
"Plugin 'carlosgaldino/elixir-snippets'
"Plugin 'klen/python-mode'
"Plugin 'KabbAmine/vCoolor'
"Plugin 'scrooloose/nerdtree'


"
" End Plugins
"

"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
" "
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

autocmd FileType python set wrap
"let g:pymode_options_max_line_length = 1
"let g:pymode_lint = 0
let g:django_projects = '~/Documents/Projects/Django_projects/' "Sets all projects under project

set tabstop=4
set shiftwidth=4
set expandtab
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
"set hls
"set nu
map <F6> :tabp<CR>
map <F8> :tabn<CR>

set clipboard+=unnamedplus

nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP
"map <C-l> :NERDTreeToggle<CR>

"from Vincent Driessen 

set nocompatible

let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nmap <silent> <ctrl>w :w<CR>


set hidden

set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title

autocmd filetype python set expandtab

"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

nnoremap j gj
nnoremap k gk

nmap <silent> ,/ :nohlsearch<CR>

nnoremap ; :

set mouse=a

set ttymouse=xterm2

"cmap w!! w !sudo tee % >/dev/null
