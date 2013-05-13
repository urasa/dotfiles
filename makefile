
DF_DIR = $(HOME)/dotfiles

# update
#   make links or copies for each dotfiles
update: _git _vim _conky _xmodmap _tmux

# initialize
#   setup the submodules and update-script
#   run after `git clone /path/to/dotfiles.git`
init: 
	git submodule init
	git submodule update
	@echo 'please build the submodules!'


# update setting files
_git:
	ln -vs $(DF_DIR)/git/gitconfig $(HOME)/.gitconfig
	ln -vs $(DF_DIR)/git/global_ignore $(HOME)/.global_ignore

_vim:
	ln -vs $(DF_DIR)/vim/.vimrc $(HOME)/.vimrc
	ln -vs $(DF_DIR)/vim/.gvimrc $(HOME)/.gvimrc
	ln -vs $(DF_DIR)/vim $(HOME)/.vim

_conky:
	ln -vs $(DF_DIR)/.conkyrc $(HOME)/.conkyrc

_xmodmap:
	ln -vs $(DF_DIR)/.Xmodmap $(HOME)/.Xmodmap

_tmux:
	ln -vs $(DF_DIR)/.tmux.conf $(HOME)/.tmux.conf
