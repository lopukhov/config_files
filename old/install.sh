#!/bin/bash
# 
# Install and configure system with pacman support
# 

function section {
	echo "----------------------------"
	echo $1
	echo "----------------------------"
}

function install-fish {
	sudo pacman -S fish neofetch
	cp -r .config/fish ~/.config/
	chsh -l
	read -p "Is fish /usr/bin/fish? [Y/n]" answer
	if [ "$answer" != "n" ]; then
		chsh -s /usr/bin/fish
	else
		echo "Don\'t forget to change the shell."
	fi
}

function install-vim {
	sudo pacman -S vim cmake
	cp -r .vim* ~/
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

	read -p "You should install all the plugins. Press Enter to continue." a
	vim

	python2 ~/.vim/bundle/YouCompleteMe/install.py --go-completer --rust-completer
}

function install-termite {
	sudo pacman -S termite
	cp -r .config/termite ~/.config/
}

function install-i3 {
	sudo pacman -S i3-gaps i3lock i3blocks dmenu lxappearance awesome-terminal-fonts scrot imagemagick feh 
	cp -r .fonts ~/
	cp -r .config/i3 ~/.config/
}

echo "Updating system..."
echo
sudo pacman -Syu

section "fish shell"
read -p "Do you want to install the fish shell? [Y/n]" fish
if [ "$fish" != "n" ]; then
	install-fish
else
	echo "If you want to use zsh you have to install it manually. It is not implemented yet."
fi
echo

section "vim editor"
read -p "Do you want to install the vim editor? [Y/n]" vim
if [ "$vim" != "n" ]; then
	install-vim
fi
echo

section "termite terminal emulator"
read -p "Do you want to install the termite terminal emulator? [Y/n]" termite
if [ "$termite" != "n" ]; then
	install-termite
fi
echo

section "i3 window manager"
read -p "Do you want to install the i3 window manager? [Y/n]" i3
if [ "$i3" != "n" ]; then
	install-i3
fi
echo
