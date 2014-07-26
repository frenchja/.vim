# Vim Dotfiles
## Overview
I use the following repository to sync my .vimrc preferences across computers. These instructions are intended to help any friends and collaborators use my Vim configuration. Using my git assumes a clean Vim installation (i.e., running `ls -A ~ | grep vim` produces no output). If needed, `rm -rf ~/.vim*` will clean up your `$HOME` directory.
## Usage
* Download [MacVim](https://github.com/b4winckler/macvim/downloads)
* Download [Git](https://code.google.com/p/git-osx-installer/downloads/list?can=3), although it's rather implausible that you'd be on this site if you didn't have it.
* In Terminal, issue the following:
	* `cd ~`
	* `git clone git://github.com/frenchja/.vim.git`
	* `curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh`
	* `ln -s ~/.vim/vimrc ~/.vimrc`
        
* From [normal-mode](http://vimdoc.sourceforge.net/htmldoc/intro.html#mode-switching) within MacVim, type the `:NeoBundleInstall!`. 
                                                                                                                                                      
[NeoBundle](https://github.com/Shougo/neobundle.vim) will handle the rest of the magic.

## Specific Plugins
### Syntastic
To use PyFlakes with Syntastic to check your Python syntax, you need to have it installed and in your 
$PYTHONPATH. 

MacPorts: `sudo port install py27-pyflakes`
PIP: `sudo pip install pyflakes`
Anaconda: `conda install pyflakes`

## NeoComplete
NeoComplete requires "if_lua" enabled Vim(7.3.885 or above).  The version that ships with OS X 10.9 is too old, 
so use Homebrew to install a newer version:

```bash
brew install vim --with-lua
```

