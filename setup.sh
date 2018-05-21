#!/bin/sh

cp .bash_profile ~/
cp .condarc ~/
cp .gitconfig ~/
cp .vimrc ~/
cp .snippets.json ~/
cp .tmux.conf ~/
tmux source-file ~/.tmux.conf
