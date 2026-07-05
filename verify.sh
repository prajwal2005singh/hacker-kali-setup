#!/usr/bin/env bash

set -e

TOOLS=(
git
go
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
)

echo
echo "Verification"
echo "============"
echo

for tool in "${TOOLS[@]}"
do

    if command -v "$tool" >/dev/null 2>&1
    then
        printf "✓ %-15s\n" "$tool"
    else
        printf "✗ %-15s\n" "$tool"
    fi

done