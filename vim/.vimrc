" neobundle.vim
set nocompatible               " Be iMproved

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

filetype plugin indent on

" NeoBundle Installation check.
if neobundle#exists_not_installed_bundles()
	echomsg 'Not installed bundles : ' .
		\ string(neobundle#get_not_installed_bundle_names())
	echomsg 'Please execute ":NeoBundleInstall" command.'
	"finish
endif

" plugins
NeoBundle 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim'}
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tpope/vim-surround'
" syntax
NeoBundle 'beyondmarc/glsl.vim'
" color
NeoBundle 'thinca/vim-guicolorscheme'
NeoBundle 'ujihisa/unite-colorscheme'
" colorschemes
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/Wombat'
set t_Co=256
syntax on
set background=dark
colorscheme molokai
" if !has('gui_running')
"     autocmd VimEnter * GuiColorScheme molokai
" end
" autocmd GUIEnter * colorscheme molokai

" powerline
set laststatus=2

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

" quickrun
let g:quickrun_config = {
\   "_" : {
\       "outputter/buffer/split" : ":botright 10sp",
\       "outputter/buffer/close_on_empty" : 1,
\       "hook/time/enable" : 1,
\       "runner" : "vimproc",
\       "runner/vimproc/updatetime" : 500
\   },
\}

" show number
set number

" always display tabs
set showtabline=2

" tab & indent
" expandtab: instert spaces for tab
" tabstop(ts): width of tab
" softtabstop(sts): inserted number of spaces for tab
" shiftwidth(sw): inserted number of spaces as autoindent 
" autoindent: considering only before line
" smartindent: considering some C syntax
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent

" don't leave the buckup files
set backupdir=~/.vim/tmp

" to move cursor between the split screen
nmap <Left> h
nmap <Right> l
nmap <Up> k
nmap <Down> j

" gtags
nmap <C-n> :cn<CR>
nmap <C-p> :cp<CR>
nmap <C-g> :Gtags 
nmap <C-h> :Gtags -f %<CR>
nmap <C-k> :GtagsCursor<CR>
