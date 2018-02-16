# pyupdate v. 0.1
Command Line Tool for Updating All Installed Python Modules

## Usage

Use the following steps to make this shell script available to you from any directory

1. Either clone this repository to a directory in your path - perhaps you have a bin folder in your home directory - 
  or create a symlink to pyupdate.sh in your ~./local/bin folder.
2. Make sure to make the script executable. For the current user only, this is a simple as 'chmod +x pyupdate.sh' 
  in its containing directory.
  
## Caution

This script attempts to update ALL of your packages installed via pip. This could beb quite time consuming.
  Consider running this process in the background, and definitely make sure you don't urgently need python before using pyupdate.
