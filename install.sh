mkdir -p vim
mkdir -p vim/autoload
mkdir -p vim/bundle

#ln -s $PWD/bash_profile ~/.bash_profile
#ln -s $PWD/bash_common ~/.bash_common
ln -s $PWN/shell_common ~/.zshrc
ln -s $PWD/vim ~/.vim
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/gitconfig ~/.gitconfig
ln -s $PWD/gitignore ~/.gitignore

git config --global core.excludesfile ~/.gitignore

# Install vim bundles via Pathogen
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
git clone https://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary
git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter

# Install colours
curl https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim --create-dirs -o ~/.vim/colors/zenburn.vim

# Install pathogen
curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim --create-dirs -o ~/.vim/autoload/pathogen.vim
