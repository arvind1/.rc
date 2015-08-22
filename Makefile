#!/usr/bin/make -f

DIRS  := $(notdir $(abspath $(wildcard */)))
FILES := $(wildcard *config) $(wildcard *rc)
PLUG  := https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

.PHONY: all install clean dist check
all:

.PHONY: $(DIRS) $(FILES)
$(DIRS) $(FILES):
	@ln -ivsrfT $@ ~/.$@

.PHONY: install
install: $(DIRS) $(FILES)
	@curl -fLo ~/.vim/autoload/plug.vim --create-dirs $(PLUG)
	@vim +PluginInstall +PlugUpdate +qall
