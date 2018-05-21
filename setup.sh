#!/bin/sh

cp .bash_profile ~/
cp .condarc ~/
cp .gitconfig ~/
cp .vimrc ~/
cp .tmux.conf ~/
tmux source-file ~/.tmux.conf
