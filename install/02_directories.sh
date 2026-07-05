#!/usr/bin/env bash

set -euo pipefail

mkdir -p \
~/bugbounty/{targets,recon,scans,reports,scripts,screenshots,wordlists} \
~/labs/{tryhackme,portswigger,hackthebox,vulnerable-apps} \
~/projects \
~/tools/{repos,custom,binaries,wordlists} \
~/notes/{bugbounty,web,linux,ctf} \
~/payloads \
~/loot \
~/templates \
~/downloads

echo "Workspace created."