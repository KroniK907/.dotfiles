#!/bin/bash
dir=$(pwd)

git submodule update --init --recursive

rm -rf $HOME/.vi*
rm -f $HOME/.bash_profile
rm -f $HOME/.gitconfig

ln -s $dir/.vi* $HOME
ln -s $dir/.bash* $HOME
ln -s $dir/.gitconfig $HOME

echo "Please run the following commands"
echo "sudo yum install ctags the_silver_searcher"
