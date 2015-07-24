#!/bin/zsh

ln -sf ~/.dotfiles/zshrc ~/.zshrc
ln -sf ~/.dotfiles/tig2rc ~/.tigrc

rm -rf ~/.vim/bundle/
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/backup
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sf ~/.dotfiles/vimrc ~/.vimrc
vim +PluginInstall +qall

ln -sf ~/.dotfiles/gitconfig ~/.gitconfig

ln -sf ~/.dotfiles/config/awesome/rc.lua ~/.config/awesome/rc.lua
