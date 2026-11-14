DISABLE_AUTO_UPDATE="true"
plugins=(zsh-syntax-highlighting zsh-autosuggestions)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

source "$HOME/.aliases"
[[ -f "$HOME/.aliases.secret" ]] && source "$HOME/.aliases.secret"

if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PATH="/opt/homebrew/opt/php@8.3/bin:/opt/homebrew/opt/php@8.3/sbin:$PATH"
fi
[[ -d "$HOME/Library/Python/3.9/bin" ]] && export PATH="$HOME/Library/Python/3.9/bin:$PATH"
[[ -d /Library/TeX/texbin ]] && export PATH="$PATH:/Library/TeX/texbin"

command -v starship >/dev/null && eval "$(starship init zsh)"
command -v fastfetch >/dev/null && fastfetch --config ~/DotFiles/fastfetch/groups.jsonc
