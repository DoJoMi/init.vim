#!/bin/sh

function logo(){
	echo -e '
 ____  _____    __ _____ _____ _____ 
|    \|     |__|  |     |     |     |
|  |  |  |  |  |  |  |  | | | |-   -|
|____/|_____|_____|_____|_|_|_|_____|
powerded by
'
}

function color() {
	printf '\033[0;31m%s\033[0m\n' "$1"
}

function pause(){
   read -p "$*"
}

function backup() {
	if [ -e "$HOME/.vimrc" ]; then
	  mv $HOME/.vimrc $HOME/.vimrc.bak
	fi
}

function remove(){
	color " --> Restore to old .vimrc..."
	pause 'Press [Enter] key to continue...'
	rm -rf $HOME/.vim $HOME/.vimrc $HOME/.viminfo
	mv $HOME/.vimrc.bak $HOME/.vimrc
}


function install() {
	color " -->Install all relevant files..."
	pause 'Press [Enter] key to continue...'
	git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
	git clone https://github.com/DoJoMi/dotvim.git $HOME/.vim/.vim_rc
	ln -s .vim/.vim_rc/.vimrc $HOME/.vimrc
	vim +PluginInstall +qall
}

function skel(){
    if [ -d "$HOME/.vim" ]; then
        color " --> Directory exists no new repo cloning..."
        pause 'Press [Enter] key to continue copying files to /etc/skel...'
        sudo -s cp -R $HOME/.vim $HOME/.vimrc /etc/skel
        echo "***************************************"
        echo "Now vim is available for all new created users"
        echo "***************************************"
    else
        color " --> Clone repo .... "
        git clone https://github.com/VundleVim/Vundle.vim.git /etc/skel/.vim/bundle/Vundle.vim
	git clone https://github.com/DoJoMi/dotvim.git /etc/skel/.vim/.vim_rc
        echo "***************************************"
        echo "Now vim is available for all new created users"
        echo "***************************************"
    fi
}




while getopts "irs" opt; do
	case $opt in
	i)
		logo
		backup
		install
		;;
	s)
		logo
		skel
		;;

	r)
		logo
		remove
		;;
	esac
done
