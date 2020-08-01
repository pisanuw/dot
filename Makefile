#!/usr/bin/make -f
SHELL = /bin/bash


What     ?= Github101#
Who      ?= Yusuf Pisan#
When     ?= 2020#
Email    ?= pisan@uw.edu#
Title    ?= Init methods for a repo#
Where    ?= github.com/pisanuw/dot/#

############################################################
help:
	@echo "$$HELP"



############################################################

install:
	cp uw/dot-bashrc ~/.bashrc
	cp uw/dot-bash_profile ~/.bash_profile
	cp uw/dot-emacs ~/.emacs
	cp uw/dot-gitignore ~/.gitignore

update:
	cp ~/.bashrc uw/dot-bashrc 
	cp ~/.bash_profile uw/dot-bash_profile 
	cp ~/.emacs uw/dot-emacs 
	cp ~/.gitignore uw/dot-gitignore
	git commit -am saving
	git push
	git status



define HELP
About DOT
=========

This Makefile contains all the config tricks that are global to all my
Mac and Unix installations as well all my Github repos.

Before you do anything else, then anywhere, onetime install.

	make macInstall    all # if mac 
	make ubuntuInstall all # if ubuntu

Note: this could take a few minutes.

endef
export HELP


