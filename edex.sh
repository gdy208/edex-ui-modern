#!/bin/bash
# eDEX-UI v3.0.0 — Launch script (fork modernisé)
# Active Node 20 via nvm puis lance Electron 32

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Activer la bonne version de Node.js via nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use
nvm use 20 >/dev/null 2>&1

# Lancer eDEX-UI (GPU in-process pour stabilité Intel)
exec "$SCRIPT_DIR/node_modules/.bin/electron" "$SCRIPT_DIR/src" --in-process-gpu "$@"
