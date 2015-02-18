if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'kien/ctrlp.vim'
 NeoBundle 'flazz/vim-colorschemes'
 NeoBundle 'altercation/vim-colors-solarized'
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'scrooloose/syntastic'
 NeoBundle 'bling/vim-airline'
 NeoBundle 'davidhalter/jedi-vim'
 " You can specify revision/branch/tag.
 NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
 NeoBundle 'junegunn/limelight.vim'
 NeoBundle 'moll/vim-node'
 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 set number
 set modeline
 syntax on
 colorscheme solarized
 let g:solarized_termcolors=256
 
 " Airline
 set laststatus=2
 let g:airline_powerline_fonts = 1
 " NerdTREE
 augroup NerdTREE
	autocmd!	
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 augroup END 
 " Syntastic
 let g:syntastic_check_on_open = 1
 
 augroup Complete
 	autocmd!	
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
 	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
 	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
 	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
 augroup END	 
 " Markdown
 au BufRead,BufNewFile *.md set filetype=markdown
 " Limelight
 let g:limelight_conceal_ctermfg = 'gray'
 let g:limelight_conceal_ctermfg = 240

 " Non-GNU Systems
 let g:make = 'gmake'
 if system('uname -o') =~ '^GNU/'
 	let g:make = 'make'
 endif
 NeoBundle 'Shougo/vimproc.vim', {'build': {'unix': g:make}}

