#! /bin/bash

## This script will update all site packages for python2 and python3
## The updare will apply to the currently active environament
## If no project environment is invoked, the default is used
## Typically, this means site packages will be upgraded in .local

py2_flag=`which python2 | grep -o "python2"`
py3_flag=`which python3| grep -o "python3"`

if [ -n "${py2_flag}" ]
then
	python2 -m easy_install -U --user setuptools
	python2 ~/.local/share/pyupdate/pyupdate2.py
else
	echo "No python2 installation, skipping..."
	echo ""
fi

if [ -n "${py3_flag}" ]
then
	python3 -m easy_install -U --user setuptools
	python3 ~/.local/share/pyupdate/pyupdate3.py
else
	echo "No python2 installation, skipping..."
	echo ""
fi

echo ""
echo "All updated, happy pythoning!"
