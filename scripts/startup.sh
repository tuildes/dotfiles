#!/bin/bash

# tuildes - startup script (macOS)
# description: prepare pc in startup

# Open /Applications default apps
APP_DIR="/Applications";
APPS_ARR=( 'Linear' 'Raycast' 'Stats' 'Rectangle' 'Mullvad VPN' 'Bitwarden' 'Mos' )

for app in "${APPS_ARR[@]}"; do
    open -g "$APP_DIR/$app.app"
done
