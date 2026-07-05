#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT_DIR/lib/common.sh"

WORDLIST_DIR="$HOME/tools/wordlists"
REPO_DIR="$HOME/tools/repos"

mkdir -p "$WORDLIST_DIR"
mkdir -p "$REPO_DIR"

clone_repo() {

    local url="$1"

    local dir="$2"

    if [[ -d "$dir" ]]
    then
        warn "$(basename "$dir") already exists. Skipping."
        return
    fi

    git clone "$url" "$dir"

}

info "Installing Kali wordlists..."

sudo apt install -y seclists

clone_repo \
https://github.com/danielmiessler/SecLists.git \
"$REPO_DIR/SecLists"

clone_repo \
https://github.com/swisskyrepo/PayloadsAllTheThings.git \
"$REPO_DIR/PayloadsAllTheThings"

clone_repo \
https://github.com/trickest/wordlists.git \
"$REPO_DIR/Trickest"

clone_repo \
https://github.com/assetnote/wordlists.git \
"$REPO_DIR/Assetnote"

clone_repo \
https://github.com/emadshanab/OneListForAll.git \
"$REPO_DIR/OneListForAll"

ln -sf /usr/share/seclists "$WORDLIST_DIR/seclists"

success "Wordlists installed."