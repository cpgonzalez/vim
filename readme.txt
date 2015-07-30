install vundle:
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

make sure clang is installed and install youcomplete me:

git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer

** IF YOU WANT TO ADD SUPPORT FOR OTHER LANGUAGES LIKE GO AND C#, add --gocode-completer and --omnisharp-completer **

Then install all plugins:

vim +BundleInstall +qall

for submodules, inside the dir of the submodule do git submodule update --init --recursive
