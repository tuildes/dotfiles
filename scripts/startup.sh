#!/usr/bin/env bash

set -euo pipefail

DOTFILES="${DOTFILES:-$HOME/DotFiles}"
OS="$(uname -s)"
LOG="${XDG_CACHE_HOME:-$HOME/.cache}/dotfiles-startup.log"
mkdir -p "$(dirname "$LOG")"

log() { printf '[%s] %s\n' "$(date '+%H:%M:%S')" "$*" | tee -a "$LOG"; }

check_network() {
  if ping -c 1 -W 2 1.1.1.1 >/dev/null 2>&1; then
    log "network: ok"
  else
    log "network: unreachable"
    return 1
  fi
}

public_ip() {
  command -v curl >/dev/null 2>&1 || return 0
  local info
  info="$(curl -fsS --max-time 4 https://ipinfo.io/json 2>/dev/null || true)"
  [[ -n "$info" ]] || return 0
  log "ip: $(printf '%s' "$info" | grep -E '"ip"|"org"|"city"' | tr -d ',"' | paste -sd ' ' -)"
}

start_docker_stacks() {
  command -v docker >/dev/null 2>&1 || { log "docker: not installed"; return 0; }
  if ! docker info >/dev/null 2>&1; then
    log "docker: daemon not running"
    return 0
  fi

  local stack
  for stack in "$DOTFILES"/docker/*/compose.yml; do
    [[ -f "$stack" ]] || continue
    local dir
    dir="$(dirname "$stack")"
    if [[ ! -f "$dir/.env" ]]; then
      log "docker: skip $(basename "$dir") (no .env yet)"
      continue
    fi
    log "docker: up $(basename "$dir")"
    (cd "$dir" && docker compose up -d) || log "docker: failed $(basename "$dir")"
  done
}

mac_open_apps() {
  local app_dir="/Applications"
  local apps=(Spotify Raycast Stats Rectangle NordVPN Bitwarden Mos)

  for app in "${apps[@]}"; do
    if [[ -d "$app_dir/$app.app" ]]; then
      open -g "$app_dir/$app.app" || true
      log "app: $app"
    else
      log "app: missing $app"
    fi
  done
}

linux_services() {
  start_docker_stacks
}

# --- main --------------------------------------------------------------------

log "startup begin ($OS)"
check_network || true
public_ip || true

case "$OS" in
  Darwin)
    mac_open_apps
    ;;
  Linux)
    linux_services
    ;;
esac

log "startup done"
