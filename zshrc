# Init Homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# Some local binaries
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/bin:$HOME/.bin:$PATH"

# Homebrew binaries
export PATH="/usr/local/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init - zsh)"

# Postgresql
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# Set Node version
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Setup you choice of editor
export VISUAL=nvim
export EDITOR=$VISUAL

# Load prompt theme, except for Warp
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  source $(brew --prefix)/opt/spaceship/spaceship.zsh
  SPACESHIP_PROMPT_ASYNC=FALSE
fi

# Load general zsh config
[[ -f ~/.zsh.config ]] && source ~/.zsh.config

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Load aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Load functions
source ~/.zsh-functions/bbc-proxies.zsh
source ~/.zsh-functions/history.zsh
source ~/.zsh-functions/count.zsh
source ~/.zsh-functions/highlight.zsh

fpath=(/usr/local/share/zsh-completions $fpath)


source "$HOME/.cargo/env"
