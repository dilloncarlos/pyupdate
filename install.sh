#! /bin/bash

## This installation script places pyupdate into ~/.local/share and a symlink to ~/.local/bin
## You need to have these structures for the current version.
## Please send me Questions and suggestions: dillon@dilloncarlos.me

if [ ! -d ~/.local/share/pyupdate ]
then
	mkdir ~/.local/share/pyupdate 
fi

cp ./pyupdate2.py ~/.local/share/pyupdate/pyupdate2.py
cp ./pyupdate3.py ~/.local/share/pyupdate/pyupdate3.py
cp ./pyupdate.sh ~/.local/share/pyupdate/pyupdate.sh

chmod +x ~/.local/share/pyupdate/pyupdate.sh
ln -sf ~/.local/share/pyupdate/pyupdate.sh ~/.local/bin/pyupdate
