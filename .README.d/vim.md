1. Clone the repository
2. Fix symbolic links to their correct (absolute) locations:
    * `ln -nfs $HOME/.vim $HOME/.config/nvim`
    * `ln -nfs $HOME/.vim/vimrc $HOME/.vim/init.vim`
3. Clone `minpac` into `$HOME/vim/pack/minpack/opt`. Ideally this would simply
   be a Git sub-module of this repository, but that doesn't seem to be
   straightforward when using [vcsh](https://github.com/RichiH/vcsh).
4. Start vim and run `PackUpdate`
