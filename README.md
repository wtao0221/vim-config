# vim-config
vim config
```
sudo apt-get install -y silversearcher-ag ctags software-properties-common npm
```

```
brew install the_silver_searcher
```


### go thing
```
:GoInstallBinaries
```

get the gocode
```
go get github.com/nsf/gocode
go build
go install
```

### YCM thing
```
cd ~/.vim/bundle
git clone https://github.com/ycm-core/YouCompleteMe.git
git clone https://github.com/VundleVim/Vundle.vim.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py --all
vim +PluginInstall +qall
```

### Miscs
update vim to 8.1 higher
```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sduo apt-get install vim
```
