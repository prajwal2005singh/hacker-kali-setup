#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT_DIR/lib/common.sh"

info "Checking Go..."

if command -v go >/dev/null 2>&1
then
    success "Go already installed."
else
    sudo apt install golang-go -y
fi

if ! grep -q "GOPATH" ~/.bashrc
then
cat << EOF >> ~/.bashrc

export GOPATH=\$HOME/go
export PATH=\$PATH:\$HOME/go/bin

EOF
fi

success "Go configured."