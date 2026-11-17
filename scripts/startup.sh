#!/usr/bin/env bash

set -euo pipefail

DOTFILES="${DOTFILES:-$HOME/DotFiles}"
OS="$(uname -s)"

start_docker_stacks() {
    command -v docker >/dev/null 2>&1; 
    if ! docker info >/dev/null 2>&1; then
        log "docker: daemon not running"
        return 0
    fi

    local stack
    for stack in "$DOTFILES"/docker/*/compose.yml; do
        [[ -f "$stack" ]] || continue
        local dir
        dir="$(dirname "$stack")"
        cd "$dir" && docker compose up -d
    done
}

mac_open_apps() {
    local app_dir="/Applications"
    local apps=(Spotify Raycast Stats Rectangle NordVPN Bitwarden Mos)

    for app in "${apps[@]}"; do
        if [[ -d "$app_dir/$app.app" ]]; then
            open -g "$app_dir/$app.app" || true
        fi
    done
}

linux_services() {
    start_docker_stacks
}

case "$OS" in
    Darwin)
        mac_open_apps
        ;;
    Linux)
        linux_services
        ;;
esac
