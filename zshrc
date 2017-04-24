# Some local binaries
export PATH="$HOME/.bin:$PATH"

# Homebrew binaries
export PATH="/Users/david/Projects/sky/datum/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# Set Node version
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Load up RBEnv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(rbenv init - zsh)"
eval "$(rbenv rehash)"
export PATH="$HOME/.bin:$PATH"

# Set Postgres user
export PGUSER="$(whoami)"

# Setup Golang
export GOPATH=$HOME/Projects/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Setup you choice of editor
export VISUAL=vim
export EDITOR=$VISUAL

export COSMOS_CERT=/Users/david/workspace/dev.bbc.co.uk.pem

# Load prompt theme
[[ -f ~/.zsh.prompt ]] && source ~/.zsh.prompt

# Load general zsh config
[[ -f ~/.zsh.config ]] && source ~/.zsh.config

# Load aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Load functions
source ~/.zsh-functions/bbc-proxies.zsh
source ~/.zsh-functions/serve.zsh
source ~/.zsh-functions/history.zsh
source ~/.zsh-functions/sandbox.zsh
source ~/.zsh-functions/count.zsh
source ~/.zsh-functions/highlight.zsh

# Setup history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zhistory

fortune | cowsay | lolcat
