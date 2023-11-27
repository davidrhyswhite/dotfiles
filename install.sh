#!/bin/sh

source ./install/macos.sh
source ./install/homebrew.sh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# # Switch the shell to zsh
sudo chsh -s /bin/zsh
compaudit | xargs chmod g-w

# Set dotfiles
for name in *; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      echo "WARNING: $target exists but is not a symlink."
    fi
  else
    if [ "$name" != 'install.sh' ] &&
       [ "$name" != 'install' ] &&
       [ "$name" != 'nvim' ] &&
       [ "$name" != 'README.md' ]; then
      echo "Creating $target"
      ln -s "$PWD/$name" "$target"
    fi
  fi
done

find bin -type f -exec chmod +x {} \;

# Setup NeoVim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

