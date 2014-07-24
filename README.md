# Vim Dotfiles
## Overview
I use the following repository to sync my .vimrc preferences across computers. These instructions are intended to help any friends and collaborators use my Vim configuration. Using my git assumes a clean Vim installation (i.e., running `ls -A ~ | grep vim` produces no output). If needed, `rm -rf ~/.vim*` will clean up your `$HOME` directory.
## Usage
* Download [MacVim](https://github.com/b4winckler/macvim/downloads)
* Download [Git](https://code.google.com/p/git-osx-installer/downloads/list?can=3), although it's rather implausible that you'd be on this site if you didn't have it.
* In Terminal, issue the following:
    
        cd ~
        git clone git://github.com/frenchja/.vim.git
        rm -rf ~/.vim/bundle/*
        git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
        ln -s ~/.vim/vimrc ~/.vimrc
        
* From [normal-mode](http://vimdoc.sourceforge.net/htmldoc/intro.html#mode-switching) within MacVim, type the `:BundleInstall!`. 
                                                                                                                                                      
[Vundle](https://github.com/gmarik/vundle) will handle the rest of the magic.

## Specific Plugins
### Command-T
This plugin is is built using Ruby ([see documentation](http://git.wincent.com/command-t.git/blob_plain/HEAD:/doc/command-t.txt)). Therefore, a fresh install will need to:

    cd ~/.vim/bundle/command-t 
    rake make
### Vim-LaTeX
* [MacTeX](http://www.tug.org/mactex/2011/).

### Vim-R
* [R](http://www.r-project.org/)

To use Vim-R with SnipMate, you need to create a symbolic link between the Vim-R 
snippet and the snipmate-snippets bundle ([see here](http://blog.binfalse.de/wp-content/uploads/2010/12/vim-r-plugin-101217.html)).

    ls -s ~/.vim/bundle/Vim-R-plugin/r-plugin/r.snippets ~/.vim/bundle/snipmate-snippets/snippets/

### PyDiction and SnipMate

### PyFlakes
To use PyFlakes to check your Python syntax, you need to have it installed and in your 
$PYTHONPATH. On OS X, something like `sudo port install py26-pyflakes` should 
work.

In Terminal:

    cd ~/.vim/bundle/pyflakes-vim
    git submodule update --init --recursive
