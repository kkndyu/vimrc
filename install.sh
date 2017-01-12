#!/bin/bash


git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/kkndyu/vimrc.git  ~/.vim/bundle/vimrc
cp ~/.vim/bundle/vimrc/.vimrc ~/
cp ~/.vim/bundle/vimrc/.ycm_extra_conf.py ~/
mkdir -p ~/.vim/after/syntax/c/
cp  ~/.vim/bundle/vimrc/c.vim ~/.vim/after/syntax/c/c.vim
mkdir -p ~/.vim/after/syntax/cpp/
cp  ~/.vim/bundle/vimrc/c.vim ~/.vim/after/syntax/cpp/c.vim


#
# After copy files
# vi ~/.vimrc
# :BundleInstall 
#

apt-get install python-dev
apt-get install vim-nox
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

