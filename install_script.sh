cp global_vimrc ~/.vimrc

sudo apt install silversearcher-ag

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe/
./install.sh

cd ~/.vim/bundle/vimproc.vim/
make
