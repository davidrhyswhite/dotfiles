# Some local binaries
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Homebrew binaries
export PATH="/usr/local/bin:$PATH"

# Set Node version
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Load up RBEnv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(rbenv init - zsh)"

# Set Postgres user
export PGUSER="$(whoami)"

# Setup Golang
export GOPATH=$HOME/Projects/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Setup you choice of editor
export VISUAL=vim
export EDITOR=$VISUAL

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
source ~/.yarn-completion/yarn-completion.plugin.zsh

# Setup history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zhistory

fortune | cowsay | lolcat

fpath=(/usr/local/share/zsh-completions $fpath)

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/david/Projects/mac-apps/sine/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/david/Projects/mac-apps/sine/node_modules/tabtab/.completions/electron-forge.zsh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/dwh06/Projects/sky/ott-graphql/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/dwh06/Projects/sky/ott-graphql/serverless/node_modules/tabtab/.completions/slss.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[[ -f /Users/dwh06/.config/yarn/global/node_modules/tabtab/.completions/yarn.zsh ]] && . /Users/dwh06/.config/yarn/global/node_modules/tabtab/.completions/yarn.zsh