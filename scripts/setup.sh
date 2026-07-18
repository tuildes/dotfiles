#!/bin/bash

# tuildes - setup script
# description: setup all alias -- unix

DOTFILES="$HOME/DotFiles"

mkdir -p "$HOME/Library/Application Support/Code/User"
mkdir -p "$HOME/.config"

ln -sf "$DOTFILES/.vimrc" "$HOME/.vimrc"
ln -sf "$DOTFILES/.gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
ln -sf "$DOTFILES/vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
ln -sf "$DOTFILES/.aliases" "$HOME/.aliases"
ln -sf "$DOTFILES/.aliases.secret" "$HOME/.aliases.secret"

echo "Finished setup"
