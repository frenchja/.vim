# Vim Dotfiles
## Overview
I use the following repository to sync my .vimrc preferences across computers. These instructions are intended to help any friends and collaborators use my Vim configuration. Using my git assumes a clean Vim installation (i.e., running `ls -A ~ | grep vim` produces no output). If needed, `rm -rf ~/.vim*` will clean up your `$HOME` directory.

## Usage
* Download [MacVim](https://github.com/b4winckler/macvim/releases)
* Download [Git](http://git-scm.com/downloads), although it's rather implausible that you'd be on this site if you didn't have it.
* Alternatively, you can install Vim using [Homebrew](http://brew.sh/):
```bash
brew install vim --with-luajit --override-system-vi
```

* In Terminal, issue the following:
```bash
cd ~
git clone git://github.com/frenchja/.vim.git
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
ln -s ~/.vim/vimrc ~/.vimrc
```
        
* From [normal-mode](http://vimdoc.sourceforge.net/htmldoc/intro.html#mode-switching) within MacVim, type the `:NeoBundleInstall!`. 
                                                                                                                                                      
[NeoBundle](https://github.com/Shougo/neobundle.vim) will handle the rest of the magic.

## Specific Plugins
### Syntastic
To use PyFlakes with Syntastic to check your Python syntax, you need to have it installed and in your
$PYTHONPATH. 

* MacPorts: `sudo port install py27-pyflakes`
* PIP: `sudo pip install pyflakes`
* Anaconda: `conda install pyflakes`

### Air
In order to use the Air statusbar, you need to install the Powerline fonts, which give access to special symbols.  Rather than installing the [patched fonts](https://github.com/powerline/fonts), it appears that using `pip` works equally well:

```bash
pip install --user git+git://github.com/Lokaltog/powerline
```

### Jedi
For Anaconda:
```bash
conda pipbuild jedi
```

## Notes
If using Solarized colors for Terminal.app and you're on OS X >= 10.7, remember to use the [patched terminal theme](https://github.com/tomislav/osx-terminal.app-colors-solarized).
