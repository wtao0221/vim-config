### Dependencies
```
On Ubuntu
sudo apt-get install -y silversearcher-ag ctags software-properties-common npm
```

```
On MacOS
brew install the_silver_searcher
```

### How to use
```
cd ~/.vim
git clone git@github.com:wtao0221/vim-config.git
```

edit ~/.vimrc
```
source ~/.vim/vim-config/init.vim
```
and then
```
vim +PlugInstall +qall
```

### Install YCM
```
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
git clone https://github.com/ycm-core/YouCompleteMe.git --recursive
cd YouCompleteMe
./install.py --all
vim +PluginInstall +qall
```

### Miscs
update vim to 8.1 higher
```
sudo add-apt-repository ppa:jonathonf/vim
sudo add-apt-repository ppa:deadsnakes/ppa // python 3.7
sudo apt-get update
sudo apt-get install vim
```
