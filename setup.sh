#!/bin/sh

mkdir -p vim/colors
cd vim/colors
curl -O https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/vim/colors/Tomorrow-Night-Eighties.vim
cd ../..

mkdir -p iterm
cd iterm
curl -O https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/iTerm2/Tomorrow%20Night%20Eighties.itermcolors > TomorrowNightEighties.itermcolors
cd ..

mkdir -p bin
