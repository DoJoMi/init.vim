### installation
```shell
bash <(curl -L https://raw.githubusercontent.com/DoJoMi/init.vim/master/install.sh) -i
#.vim_rc to /etc/skel to make it available for all new new created users
bash <(curl -L https://raw.githubusercontent.com/DoJoMi/init.vim/master/install.sh) -s

# or you can clone it as well
git clone https://github.com/DoJoMi/init.vim.git
cd ~/init.vim && ./install.sh --install
#installation problems while processing function 
# @linux --> $ echo 'set shell=/bin/bash' >> .vim/.vim_rc/.vimrc
# @bsd   --> $ echo 'set shell=/usr/local/bin/bash' >> .vim/.vim_rc/.vimrc
# and afterwards repeat $ vim +PluginInstall +qall
```

### switching from vim to neovim
```shell
export EDITOR="nvim"
mkdir ~/.config/nvim/
cat > ~/.config/nvim/init.vim <<EOF
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
EOF
```

### restore to old basic settings
```shell
bash <(curl -L https://raw.githubusercontent.com/DoJoMi/init.vim/master/install.sh) -r
```

### git-commands
```shell
git commands handled over tpope/vim-fugitive plugin
```

### optimized shortcuts
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

### snippet location
```shell
~/.vim/after/snippets/_.snippets
```

### Plugins-Collection:

```shell

Plugin Collection      --> http://vimawesome.com
check out colorschemes --> http://bytefluent.com/vivify/

" FILES
Plugin 'kien/ctrlp.vim'         " use ctrl+p for file searching
Plugin 'scrooloose/nerdtree'    " use :nerdtree
Plugin 'mileszs/ack.vim'        " use ack-grep 

" UTILITY
Plugin 'tpope/vim-surround'     " cst<div> cs"* ds" dst yss"
Plugin 'tpope/vim-fugitive'     " make git commits simpler
Plugin 'yegappan/mru'           " show most recently used files :MRU

" Snippet
Plugin 'Shougo/neocomplete'     "used with CRTL+k
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'honza/vim-snippets'
" MAIN
Plugin 'xolox/vim-session'       " Session Management :SaveSession :OpenSession
Plugin 'xolox/vim-misc'          " needed for Session Management
Plugin 'sjl/gundo.vim'           " undo tree
Plugin 'scrooloose/syntastic'    " automatic code error handler
Plugin 'tomtom/tcomment_vim'     " comment with gcc or vjjjjgc or for block gcip
Plugin 'bling/vim-airline'       " powerline alternative

" Coding Vundles
Plugin 'davidhalter/jedi-vim'         " python autocompletion

" RARE IN USE
Plugin 'nvie/vim-togglemouse'         " toogle the mouse with <F12>

" Others
Plugin 'ekalinin/Dockerfile.vim'       " docker-synthax
Plugin 'chase/vim-ansible-yaml'       " ansible-synthax
Plugin 'hashivim/vim-hashicorp-tools' " hashicorp-toolset synthax
Plugin 'andrewstuart/vim-kubernetes'  " kubernetes synthax

"Games
Plugin 'jmanoel7/vim-games'
```
