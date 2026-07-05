#!/usr/bin/env bash

set -euo pipefail

echo "[+] Updating package lists..."
sudo apt update

echo "[+] Upgrading packages..."
sudo apt full-upgrade -y

echo "[+] Installing base packages..."

sudo apt install -y \
git \
curl \
wget \
zip \
unzip \
tree \
jq \
tmux \
ripgrep \
fd-find \
python3 \
python3-pip \
python3-venv \
golang-go \
build-essential \
dnsutils \
net-tools \
nmap

echo "[+] System packages installed."