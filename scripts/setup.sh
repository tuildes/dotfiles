#!/usr/bin/env bash

set -euo pipefail

DOTFILES="${DOTFILES:-$HOME/DotFiles}"
OS="$(uname -s)"

if [[ ! -d "$DOTFILES" ]]; then
  echo "error: DotFiles not found at $DOTFILES" >&2
  exit 1
fi

link() {
    local src="$1" dest="$2"
    mkdir -p "$(dirname "$dest")"
    ln -sfn "$src" "$dest"
    echo "linked $dest -> $src"
}

echo "common links ($OS)"
link "$DOTFILES/.vimrc" "$HOME/.vimrc"
link "$DOTFILES/.gitconfig" "$HOME/.gitconfig"
link "$DOTFILES/.zshrc" "$HOME/.zshrc"
link "$DOTFILES/.aliases" "$HOME/.aliases"
link "$DOTFILES/starship.toml" "$HOME/.config/starship.toml"
link "$DOTFILES/nvim" "$HOME/.config/nvim"

if [[ -f "$DOTFILES/.aliases.secret" ]]; then
    link "$DOTFILES/.aliases.secret" "$HOME/.aliases.secret"
fi

case "$OS" in
    Darwin)
        echo "macOS extras"
        ;;
    Linux)
        echo "Linux / home-server"
        if ! command -v docker >/dev/null 2>&1; then
            echo "note: install Docker to run stacks under $DOTFILES/docker"
        fi
        ;;
    *)
        echo "warning: untested OS: $OS" >&2
        ;;
esac

echo "Finished setup"
