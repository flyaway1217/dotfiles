rm $HOME/.vimrc
rm -rf $HOME/.vim
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.vim $HOME/.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
