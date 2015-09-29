#! /bin/bash
#
# Creates links.
PWD=`pwd`
for file in .bashrc .vimrc .bash
do
  if [[ -e ~/$file ]]
  then
    echo Warning! ~$file already exists. Renaming to .old
    mv ~/$file ~/$file.old
  fi
  ln -s $PWD/$file ~/$file
done

