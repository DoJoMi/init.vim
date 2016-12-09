	
		#installation
		-------------------------
		bash <(curl -L https://raw.githubusercontent.com/DoJoMi/dotvim/master/install.sh) -i

		#.vim_rc to /etc/skel to make it available for all new new created users
		bash <(curl -L https://raw.githubusercontent.com/DoJoMi/dotvim/master/install.sh) -s
		
		or git clone https://github.com/DoJoMi/dotvim.git
		cd ~/dotvim && ./install.sh --install
		
		#installation problems while processing function 
		@linux --> $ echo 'set shell=/bin/bash' >> .vim/.vim_rc/.vimrc
		@bsd   --> $ echo 'set shell=/usr/local/bin/bash' >> .vim/.vim_rc/.vimrc
		and repeat $ vim +PluginInstall +qall
		
		#restore to old settings
		-------------------------
		bash <(curl -L https://raw.githubusercontent.com/DoJoMi/dotvim/master/install.sh) -r
		
		#main-settings
		F2     --> NERDTree
		F5     --> Gundo
		F7     --> fix indent
		F12    --> toggle mouse
		ctrl+p --> file searching
		w!!    --> write sudo premission files
		ii     --> faster ESC
		
		git commands handled over tpope/vim-fugitive

		-------------------------
		Plugin Collection --> http://vimawesome.com
		check out colorschemes --> http://bytefluent.com/vivify/
		-------------------------
		
		Other used plugins:
		-------------------------
		
		" FILES
		Plugin 'kien/ctrlp.vim'         " use ctrl+p for file searching
		Plugin 'scrooloose/nerdtree'    " use :nerdtree
		Plugin 'mileszs/ack.vim'        " use ack-grep 

		" UTILITY
		Plugin 'tpope/vim-surround'     " cst<div> cs"* ds" dst yss"
		Plugin 'tpope/vim-fugitive'     " make git commits simpler
		Plugin 'yegappan/mru'           " show most recently used files :MRU
		
		" Snippet
		Plugin 'MarcWeber/vim-addon-mw-utils'
		Plugin 'tomtom/tlib_vim' "used for snipmate
		Plugin 'garbas/vim-snipmate' "vim test.py !#->|
		Plugin 'honza/vim-snippets'

		" MAIN
		Plugin 'xolox/vim-session'       " Session Management :SaveSession :OpenSession
		Plugin 'xolox/vim-misc'          " needed for Session Management
		Plugin 'sjl/gundo.vim'           " undo tree
		Plugin 'scrooloose/syntastic'    " automatic code error handler
		Plugin 'tomtom/tcomment_vim'     " comment with gcc or vjjjjgc or for block gcip
		Plugin 'bling/vim-airline'       " powerline alternative
		
		" Coding Vundles
		Plugin 'mattn/emmet-vim'              " zen coding
		Plugin 'pangloss/vim-javascript'      " js
		Plugin 'kchmck/vim-coffee-script'     " coffe-script
		Plugin 'davidhalter/jedi-vim'         " python autocompletion

		" RARE IN USE
		Plugin 'nvie/vim-togglemouse'         " toogle the mouse with <F12>
		
		"Others
		Plugin 'PotatoesMaster/i3-vim-syntax' " i3-synthax
		Plugin 'ekalinin/Dockerfile.vim'      " docker-synthax
		Plugin 'chase/vim-ansible-yaml'       " ansible-synthax
		Plugin 'rodjek/vim-puppet'            " puppet
		
