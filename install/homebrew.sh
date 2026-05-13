#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

export PATH="/opt/homebrew/bin:$PATH"

# Git
brew install git
brew install hub
brew install gh

# Shell
brew install zsh zsh-completions
brew install spaceship

# Nvim
brew install neovim
brew install ripgrep

# Development tools
brew install python
brew install nvm
brew install rbenv ruby-build


brew install libpq postgresql@16
brew install --cask pgadmin4

# Install rust via rustup in ./install.sh

# Browsers
brew install --cask google-chrome
brew install --cask brave-browser
brew install --cask firefox

# Development tools
brew install --cask zed
brew install --cask docker
brew install --cask ghostty
brew install --cask gpg-suite
brew install --cask postman

# AI
brew install --cask chatgpt
brew install --cask codex-app
brew install codex

# Development tools: terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# General applications
brew install --cask aerial
brew install --cask slack
brew install --cask figma
