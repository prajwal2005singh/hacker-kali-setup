#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT_DIR/lib/common.sh"

TOOLS=(
"github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest"
"github.com/projectdiscovery/httpx/cmd/httpx@latest"
"github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest"
"github.com/projectdiscovery/katana/cmd/katana@latest"
"github.com/projectdiscovery/naabu/v2/cmd/naabu@latest"
"github.com/projectdiscovery/dnsx/cmd/dnsx@latest"
"github.com/projectdiscovery/notify/cmd/notify@latest"
"github.com/projectdiscovery/tlsx/cmd/tlsx@latest"

"github.com/ffuf/ffuf/v2@latest"

"github.com/lc/gau/v2/cmd/gau@latest"

"github.com/tomnomnom/waybackurls@latest"
"github.com/tomnomnom/assetfinder@latest"
"github.com/tomnomnom/anew@latest"
"github.com/tomnomnom/qsreplace@latest"

"github.com/hahwul/dalfox/v2@latest"
)

install_tool() {

    local pkg="$1"

    local binary

    binary=$(basename "$(echo "$pkg" | cut -d@ -f1)")

    if command -v "$binary" >/dev/null 2>&1; then
        success "$binary already installed."
        return
    fi

    info "Installing $binary"

    if go install "$pkg"; then
        success "$binary installed."
    else
        error "$binary failed."
    fi
}

info "Installing Go tools..."

for tool in "${TOOLS[@]}"
do
    install_tool "$tool"
done

success "Go tools installation completed."