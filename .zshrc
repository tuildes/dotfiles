# 1. ZSH & Plugins
DISABLE_AUTO_UPDATE="true"
plugins=(zsh-syntax-highlighting zsh-autosuggestions)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

source "$HOME/.aliases"
source "$HOME/.aliases.secret"

eval "$(/opt/homebrew/bin/brew shellenv)"

# PATH
export PATH="/opt/homebrew/opt/php@8.3/bin:/opt/homebrew/opt/php@8.3/sbin:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
export PATH="$PATH:/Library/TeX/texbin"

# Interface
eval "$(starship init zsh)"
fastfetch --config ~/DotFiles/fastfetch/groups.jsonc
