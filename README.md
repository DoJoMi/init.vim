### Installation
```shell

#rocky
yum  install  ncurses-devel
wget https://github.com/vim/vim/archive/master.zip	
unzip master.zip
cd vim-master/src/
./configure
make
sudo make install

bash <(curl -L https://raw.githubusercontent.com/DoJoMi/init.vim/master/install.sh) -i

# to make the vim configuration available for all new new created users
# .vimrc will be copied to /etc/skel 
bash <(curl -L https://raw.githubusercontent.com/DoJoMi/init.vim/master/install.sh) -s

# or clone it
git clone https://github.com/DoJoMi/init.vim.git
cd ~/init.vim && ./install.sh --install

# installation problems while function processing
# @linux --> $ echo 'set shell=/bin/bash' >> .vim/.vim_rc/.vimrc
# @bsd   --> $ echo 'set shell=/usr/local/bin/bash' >> .vim/.vim_rc/.vimrc
# and afterwards repeat $ vim +PluginInstall +qall
```
### Restore settings
```shell
bash <(curl -L https://raw.githubusercontent.com/DoJoMi/init.vim/master/install.sh) -r
```
cmake gcc
### Switching from Vim to Neovim
```shell
export EDITOR="nvim"
mkdir ~/.config/nvim/
cat > ~/.config/nvim/init.vim <<EOF
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
EOF
```

### Git commands
```shell
git commands handled over tpope/vim-fugitive plugin
```

### Optimized vim shortcuts
```shell
F2     --> NERDTree
F5     --> Gundo
F7     --> fix indent
F8     --> reload vimrc
F12    --> toggle mouse
ctrl+p --> file searching
w!!    --> write sudo premission files
ii     --> faster ESC
```

### Snippet location
```shell
~/.vim/after/snippets/_.snippets
```

### Plugins Collection

```shell

Plugin Collection      --> https://vimawesome.com
check out colorschemes --> https://bytefluent.com/vivify/

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
Plugin 'voldikss/vim-floaterm'  " terminal

" UTILITY
Plugin 'tpope/vim-surround'     " cst<div> cs"* ds" dst yss"
Plugin 'tpope/vim-fugitive'     " make git commits simpler
Plugin 'yegappan/mru'           " show most recently used files :MRU
Plugin 'psliwka/vim-smoothie'   " smooth scrolling

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
```

### Use Neocomplete
```shell
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'honza/vim-snippets'

"[neocomplete] Use tab to select a completion, Ctrl+K to expand a snippet,
"Ctrl+H to close Neocomplete
let g:neocomplete#enable_at_startup = 1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
inoremap <expr><C-h> pumvisible() ? "\<C-y>" : "\<C-h>"

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/after/snippets/_.snippets'
```

### Use YouCompleteMe+SuperTab+UltiSnip
```shell
Plugin 'ycm-core/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

:source ~/.vimrc
:python import sys; print(sys.version)
vim --version | grep +python3/dyn
paru -S cmake gcc
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
# just install specigic language support
python3 install.py  --go-completer --java-completer --clangd-completer
# or install all language support
python3 install.py --all
:PluginInstall
:YcmRestartServer


let g:SuperTabDefaultCompletionType = '<C-n>'
"let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:ycm_key_list_select_completion = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:UltiSnipsSnippetsDir = '~/.vim/ultisnips'
let g:UltiSnipsSnippetDirectories = ['ultisnips']
```
