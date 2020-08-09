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

DATE=`date +"%Y-%m-%d"`

MF_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

install:
	cd $(MF_DIR) &&	git pull
	cd $(MF_DIR) &&	rsync --checksum uw/dot-bashrc ~/.bashrc
	cd $(MF_DIR) && rsync --checksum uw/dot-bash_profile ~/.bash_profile
	cd $(MF_DIR) &&	rsync --checksum uw/dot-emacs ~/.emacs
	cd $(MF_DIR) &&	rsync --checksum uw/dot-gitignore ~/.gitignore

update:
	cd $(MF_DIR) &&	rsync --checksum ~/.bashrc uw/dot-bashrc 
	cd $(MF_DIR) &&	rsync --checksum ~/.bash_profile uw/dot-bash_profile 
	cd $(MF_DIR) &&	rsync --checksum ~/.emacs uw/dot-emacs 
	cd $(MF_DIR) &&	rsync --checksum ~/.gitignore uw/dot-gitignore
	cd $(MF_DIR) &&	git commit -am "saving $(DATE)"
	cd $(MF_DIR) &&	git push
	cd $(MF_DIR) &&	git status



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


