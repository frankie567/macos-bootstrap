# Openers
alias Finder="open -a Finder"
alias vscode="open -a 'Visual Studio Code'"

# Add Brew lib to PATH
export PATH=/usr/local/bin:$PATH

# NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
