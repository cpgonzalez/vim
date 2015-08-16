vim +BundleInstall +qall

If you need to install vundle, do so here:

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

for submodules, inside the dir of the submodule do git submodule update --init --recursive

vimrc and tmux.conf copies are placed in this root directory as back ups to restore on any new machine.

** Note **

remember to reload tmux config with the command:

http://fideloper.com/mac-vim-tmux

tmux source-file ~/.tmux.conf
