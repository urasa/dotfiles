" neobundle.vim
set nocompatible               " Be iMproved

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'thinca/vim-quickrun'
" color
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'thinca/vim-guicolorscheme'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim' " repo is offline...?
set background=dark
if !has('gui_running')
    " autocmd VimEnter * GuiColorScheme molokai
    colorscheme molokai
end
autocmd GUIEnter * colorscheme molokai
" autocmd VimEnter * GuiColorScheme wombat
" autocmd VimEnter * set background=dark

" powerline
set laststatus=2

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 " ‹N“®Žž‚É—LŒø‰»

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

" Installation check.
if neobundle#exists_not_installed_bundles()
	echomsg 'Not installed bundles : ' .
		\ string(neobundle#get_not_installed_bundle_names())
	echomsg 'Please execute ":NeoBundleInstall" command.'
	"finish
endif

" :source ~/.vim/code/cd.vim
set number

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
" set autoindent
set smartindent

" don't leave the buckup files
set backupdir=~/.vim/tmp

" to move cursor between the splited screen
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
