#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT_DIR/lib/common.sh"

info "Installing Python packages..."

PACKAGES=(
python3-pip
python3-venv
pipx
)

sudo apt install -y "${PACKAGES[@]}"

python3 -m pip install --user --upgrade pip

PYTHON_TOOLS=(
requests
beautifulsoup4
lxml
selenium
pwntools
flask
httpx
rich
colorama
)

for package in "${PYTHON_TOOLS[@]}"
do
    info "Installing $package"
    python3 -m pip install --user "$package"
done

success "Python environment configured."