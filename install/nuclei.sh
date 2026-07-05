#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT_DIR/lib/common.sh"

if ! command -v nuclei >/dev/null 2>&1
then
    error "Nuclei not installed."
    exit 1
fi

info "Updating nuclei templates..."

nuclei -update-templates

success "Templates updated."