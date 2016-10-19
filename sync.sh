#!/bin/bash
dir=$(pwd)

git submodule update --init --recursive

rm -rf $HOME/.vim*
rm -rf $HOME/.Vundle
rm -f $HOME/.bash_profile

ln -s $dir/.vim* $HOME
ln -s $dir/.V* $HOME
ln -s $dir/.bash* $HOME

