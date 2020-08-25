# Some local binaries
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Homebrew binaries
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Set Node version
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Setup you choice of editor
export VISUAL=nvim
export EDITOR=$VISUAL

# Load prompt theme
[[ -f ~/.zsh.prompt ]] && source ~/.zsh.prompt

# Load general zsh config
[[ -f ~/.zsh.config ]] && source ~/.zsh.config

# Load aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Load functions
source ~/.zsh-functions/bbc-proxies.zsh
source ~/.zsh-functions/history.zsh
source ~/.zsh-functions/sandbox.zsh
source ~/.zsh-functions/count.zsh
source ~/.zsh-functions/highlight.zsh

fpath=(/usr/local/share/zsh-completions $fpath)