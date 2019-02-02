1. Clone the repository
2. Fix symbolic links to their correct (absolute) locations:
    * `ln -nfs $HOME/.vim $HOME/.config/nvim`
    * `ln -nfs $HOME/.vim/vimrc $HOME/.vim/init.vim`
3. Start vim and run `PlugInstall`
