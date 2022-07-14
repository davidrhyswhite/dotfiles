#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap homebrew/core

brew install zsh zsh-completions
brew install git
brew install python
brew install nvm
brew install hub
brew install neovim
brew install gh
brew install rbenv
brew install ruby-build

brew tap homebrew/cask

brew install --cask google-chrome
brew install --cask brave-browser
brew install --cask slack
brew install --cask docker
brew install --cask 1password
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask aerial

for name in *; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      echo "WARNING: $target exists but is not a symlink."
    fi
  else
    if [ "$name" != 'install.sh' ] &&
       [ "$name" != 'init.vim' ] &&
       [ "$name" != 'README.md' ]; then
      echo "Creating $target"
      ln -s "$PWD/$name" "$target"
    fi
  fi
done
ln -s "$PWD/init.vim" "$HOME/init.vim"

find bin -type f -exec chmod +x {} \;

mkdir -p vim/colors
curl -O https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/vim/colors/Tomorrow-Night-Eighties.vim
mv -f Tomorrow-Night-Eighties.vim vim/colors

mkdir -p iterm
curl -O https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/iTerm2/Tomorrow%20Night%20Eighties.itermcolors
mv -f Tomorrow%20Night%20Eighties.itermcolors iterm

cd ~
nvm i
npm i -g neovim
npm i -g yarn

export PATH="/usr/local/opt/python/libexec/bin:$PATH"
pip install pynvim
