# Dotfiles

Its recommended to use "~/.dotfiles":

```
git clone git@github.com:johnstsimoes/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
mkdir -p vim
mkdir -p vim/autoload
mkdir -p vim/bundle
```

The symbolic links below should be adjusted depending on which shell you are using.

```
ln -s $PWD/shell_common ~/.zshrc
ln -s $PWD/vim ~/.vim
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/gitconfig ~/.gitconfig
ln -s $PWD/gitignore ~/.gitignore
```

Also to enable global `git ignore`:

```
git config --global core.excludesfile ~/.gitignore
```

The commands below will install vim bundles:

```
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
```

##

Also install (optionally):
```
https://github.com/jaseg/lolcat
https://github.com/cowsay-org/cowsay
```
