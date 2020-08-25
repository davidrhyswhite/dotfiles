#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install zsh zsh-completions
brew install git
brew install python
brew install nvm
brew install hub
brew install neovim

brew tap homebrew/cask

brew cask install google-chrome
brew cask install brave-browser
brew cask install slack
brew cask install docker
brew cask install 1password
brew cask install iterm2
brew cask install visual-studio-code

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