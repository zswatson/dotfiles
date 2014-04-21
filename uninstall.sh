#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles/backup          # old dotfiles backup directory
files="vimrc"                     # list of files/folders to symlink in homedir

##########

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
  echo "Removing symlink to $file in home directory."
  rm ~/.$file
  echo "Moving any existing backup dotfiles from $olddir to ~"
  mv $olddir/.$file ~
done

# create dotfiles_old in homedir
echo "Removing $olddir"
rmdir $olddir
echo "...done"


