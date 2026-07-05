#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$ROOT_DIR/lib/common.sh"

TOOLS=(
git
go
python3
pip3
subfinder
httpx
nuclei
katana
naabu
dnsx
notify
gau
waybackurls
assetfinder
qsreplace
dalfox
ffuf
nmap
)

echo
echo "========== Verification =========="
echo

for tool in "${TOOLS[@]}"
do
    if command -v "$tool" >/dev/null 2>&1
    then
        success "$tool"
    else
        error "$tool"
    fi
done

echo