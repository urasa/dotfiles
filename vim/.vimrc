" neobundle.vim
set nocompatible               " Be iMproved

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimshell'
" color
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'altercation/vim-colors-solarized'
set background=light
colorscheme solarized

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles


" Installation check.
if neobundle#exists_not_installed_bundles()
	echomsg 'Not installed bundles : ' .
		\ string(neobundle#get_not_installed_bundle_names())
	echomsg 'Please execute ":NeoBundleInstall" command.'
	"finish
endif

:source $VIMRUNTIME/macros/cd.vim
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4

