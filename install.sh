#!/bin/bash

logo(){
	echo -e '
 ____  _____    __ _____ _____ _____ 
|    \|     |__|  |     |     |     |
|  |  |  |  |  |  |  |  | | | |-   -|
|____/|_____|_____|_____|_|_|_|_____|
powerded by
'
}

color() {
	printf '\033[0;31m%s\033[0m\n' "$1"
}

function pause(){
   read -p "$*"
}

backup() {
	if [ -e "$HOME/.vimrc" ]; then
	  mv $HOME/.vimrc $HOME/.vimrc.bak
	fi
}

remove(){
	color " --> Restore to old .vimrc..."
	pause 'Press [Enter] key to continue...'
	rm -rf $HOME/.vim $HOME/.vimrc $HOME/.viminfo
	mv $HOME/.vimrc.bak $HOME/.vimrc
}


install() {
		color " -->Install all relevant files..."
		pause 'Press [Enter] key to continue...'
		git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
		git clone https://github.com/DoJoMi/dotvim.git $HOME/.vim/.vim_rc
		ln -s .vim/.vim_rc/.vimrc $HOME/.vimrc
		vim +PluginInstall +qall
}


while getopts "ir" opt; do
	case $opt in
	i)
		logo
		backup
		install
		;;
	r)
		remove
		;;
	esac
done