" GENERAL
syntax enable               " enable syntax processing
let mapleader=","           " change the mapleader from \ to ,

set hidden                  " hides buffers insted of closing
set nowrap                  " don't wrap lines
set number                  " show line numbers
set cursorline              " highlight current line
set autoindent              " always set autoindenting on
set copyindent              " copy the previous indentation on autoindenting
set tabstop=2               " number of visual spaces per TAB#
set softtabstop=2           " number of spaces in tab when editing
set expandtab               " tabs are spaces
set encoding=utf-8          " utf8 default encoding
set termencoding=utf-8
set more                    " more like less
set title                   " set title
set t_Co=256                " use 265 colors
set hlsearch                " highlight search results
set incsearch               " show search matches as you type
set nobackup                " no recover if vim crashes
set noswapfile
set shell=/bin/bash
set cmdheight=2
set visualbell              " don't beep
set noerrorbells            " don't beep
set nomodeline              " disable mode lines sec.
let g:session_autoload = 'no'

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.,eol:¬ "highlight whitespaces
" autocmd filetype html,xml set listchars-=tab:>. "disable highlight for special files

" VUNDLE PLUGIN MANAGER
set nocompatible
filetype off

" old vundle configuration
" set rtp+=~/vimfiles/bundle/Vundle.vim
" :let g:session_autoload = 'no'
" call vundle#begin()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" VundlePlugins
" CorePlugins
Plugin 'gmarik/Vundle.vim'
" Plugin 'morhetz/gruvbox'
" Plugin 'flazz/vim-colorschemes' " :colorscheme wombat
" Plugin 'nightsense/cosmic_latte'
" find the right colorscheme @ 
" http://bytefluent.com/vivify/
Plugin 'ayu-theme/ayu-vim' " or other package manager

" FILES
Plugin 'kien/ctrlp.vim'         " use ctrl+p for file searching
Plugin 'scrooloose/nerdtree'    " use :nerdtree
Plugin 'mileszs/ack.vim'        " use ack-grep

" UTILITY
Plugin 'tpope/vim-surround'     " cst<div> cs"* ds" dst yss"
Plugin 'tpope/vim-fugitive'     " make git commits simpler
Plugin 'yegappan/mru'           " show most recently used files :MRU

" SNIPPETS / COMPLETION
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'ervandew/supertab'

" MAIN
Plugin 'xolox/vim-session'       " Session Management :SaveSession :OpenSession
Plugin 'xolox/vim-misc'          " needed for Session Management
Plugin 'sjl/gundo.vim'           " undo tree
Plugin 'scrooloose/syntastic'    " automatic code error handler
Plugin 'tomtom/tcomment_vim'     " comment with gcc or vjjjjgc or for block gcip
Plugin 'bling/vim-airline'       " powerline alternative

" Coding Vundles
Plugin 'davidhalter/jedi-vim'         " python autocompletion
Plugin 'fatih/vim-go'                 " go
Plugin 'google/vim-jsonnet'           " jsonnet

" RARE IN USE
Plugin 'nvie/vim-togglemouse'         " toogle the mouse with <F12>

"Others
Plugin 'ekalinin/Dockerfile.vim'      " docker-synthax
Plugin 'chase/vim-ansible-yaml'       " ansible-synthax
Plugin 'avakhov/vim-yaml'             " vim-yaml
Plugin 'andrewstuart/vim-kubernetes'  " kubernetes synthax
Plugin 'nginx.vim'                    " nginx synthax
Plugin 'hashivim/vim-hashicorp-tools' " hashicorp-toolset synthax

"Games
Plugin 'jmanoel7/vim-games'

call vundle#end()
filetype plugin indent on


" CUSTOMIZATION

" colorscheme
" highlight Normal ctermfg=grey ctermbg=darkblue
" colorscheme gruvbox

set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
colorscheme ayu

nmap <F2> :NERDTreeToggle<CR>        " NERDTree
nmap <F5> :GundoToggle<CR>           " Gundo
map <F8> :so%                        " reload vimrc

"status line
set laststatus=2
set statusline=%#DiffDelete#\ %f\ %#DiffAdd#%m%r%h\ %w\ %y\ %=Line:\ %l\ Column:\ %c\ 

"sudo permission files
cmap w!! w !sudo tee % >/dev/null    

"window
map <Tab> <C-W>w
map <Bar> <C-W>v<C-W><Right>
map -     <C-Ws<C-W><Down>

"fix indent
map <F7> mzgg=G`z<CR>

"NERDTree specific
" Store the bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1
" Show hidden files, too
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
" Quit on opening files from the tree
let NERDTreeQuitOnOpen=1
" Highlight the selected entry in the tree
let NERDTreeHighlightCursorline=1
 " Use a single click to fold/unfold directories and a double click to open
 " files
let NERDTreeMouseMode=2
 " Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
 \ '\.o$', '\.so$', '\.egg$', '^\.git$' ]
"  }}}

" save default editing session befor quitting
let g:session_autosave = 'no'


let g:SuperTabDefaultCompletionType = '<C-n>'
"let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:ycm_key_list_select_completion = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:UltiSnipsSnippetsDir = '~/.vim/ultisnips'
let g:UltiSnipsSnippetDirectories = ['ultisnips']
