# Some local binaries
export PATH="$HOME/.bin:$PATH"

# Homebrew binaries
export PATH="/usr/local/bin:$PATH"

# Set Node version
export PATH="$PATH:/usr/local/lib/node_modules"
source $(brew --prefix nvm)/nvm.sh
nvm use "0.10.28" > /dev/null

# Load up RBEnv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash)"
export PATH="$HOME/.bin:$PATH"

# Setup you choice of editor
export VISUAL=vim
export EDITOR=$VISUAL

# Load prompt theme
[[ -f ~/.zsh.prompt ]] && source ~/.zsh.prompt

# Load general zsh config
[[ -f ~/.zsh.config ]] && source ~/.zsh.config

# Load aliases
[[ -f ~/.aliases ]] && source ~/.aliases
