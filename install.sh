#!/bin/bash

BASEDIR=$(dirname $0)
cd $BASEDIR
CURRENT_DIR=`pwd`

echo "Step 1: Backup old configuration"
TODAY=`date %Y%m%d`
for i in $HOME/.vimrc $HOME/.gvimrc $HOME/.vim $HOME/.vimrc.bundles; do [ -e $i ] && [ ! -L $i ] && mv $i $i.$TODAY; done
for i in $HOME/.vimrc $HOME/.gvimrc $HOME/.vim $HOME/.vimrc.bundles; do [ -L $i ] && unlink $i; done

echo "Step 2: Set up symbol links"
lnif $CURRENT_DIR/vimrc $HOME/.vimrc
lnif $CURRENT_DIR/vimrc.bundles $HOME/.vimrc.bundles
lnif $CURRENT_DIR/ $HOME/.vim

echo "Step 3: Install vundle"
if [ ! -e $HOME/.vim ]; then
    echo "Installing vundle"
    git clone https://github.com/gmarik/Vundle.vim.git $CURRENT_DIR/bundle/vundle
else
    echo "Upgrading vundle"
    cd "$CURRENT_DIR/bundle/vundle" && git pull origin master
fi

echo "Step 4: Install plugins"
SYSTEM_SHELL=$SHELL
export SHELL="/bin/sh"
vim -u $HOME/.vimrc.bundles +BundleInstall +BundleClean +qall
export SHEEL=$SYSTEM_SHELL

if [ -e $CURRENT_DIR/bundle/YouCompleteMe ]; then
    echo "Step 5: Compile YouCompleteMe"
    echo "It will take a long time, please be patient"
    echo "If any error occurs, you need to compile it manually"
    echo "cd $CURRENT_DIR/bundle/YouCompleteMe/ && bash -x install.sh --clang-completer"
    cd $CURRENT_DIR/bundle/YouCompleteMe
    if [ `which clang` ]; then
        bash -x install.sh --clang-completer --system-libclang
    else
        bash -x install.sh --clang-completer
    fi
fi

echo "Done! Enjoy it!"

lnif() {
	if [ -e "$1" ]; then
		ln -sf "$1" "$2"
	fi
}
