#!/bin/sh

mkdir -p vim/colors
curl -O https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/vim/colors/Tomorrow-Night-Eighties.vim
mv -f Tomorrow-Night-Eighties.vim vim/colors

mkdir -p iterm
curl -O https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/iTerm2/Tomorrow%20Night%20Eighties.itermcolors
mv -f Tomorrow%20Night%20Eighties.itermcolors iterm

mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
curl -O https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/Xcode%204/Tomorrow%20Night%20Eighties.dvtcolortheme
mv Tomorrow%20Night%20Eighties.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/

mkdir -p bin
