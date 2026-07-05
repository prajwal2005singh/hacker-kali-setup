#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT_DIR/lib/common.sh"

info "Updating repositories..."
sudo apt update

info "Upgrading packages..."
sudo apt full-upgrade -y

PACKAGES=(
git
curl
wget
zip
unzip
tree
jq
tmux
ripgrep
fd-find
python3
python3-pip
python3-venv
golang-go
build-essential
dnsutils
net-tools
nmap
)

info "Installing packages..."

sudo apt install -y "${PACKAGES[@]}"

success "Base packages installed."