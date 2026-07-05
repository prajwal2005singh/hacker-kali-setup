#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT_DIR/lib/common.sh"

info "Cleaning package cache..."

sudo apt autoremove -y
sudo apt autoclean -y

success "Cleanup completed."