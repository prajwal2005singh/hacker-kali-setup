#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT_DIR/lib/common.sh"

info "Checking Git..."

if ! command -v git >/dev/null
then
    sudo apt install -y git
fi

success "Git installed."

if ! git config --global user.name >/dev/null
then
    warn "Git username not configured."
fi

if ! git config --global user.email >/dev/null
then
    warn "Git email not configured."
fi

git config --global init.defaultBranch main
git config --global pull.rebase false

success "Git configured."