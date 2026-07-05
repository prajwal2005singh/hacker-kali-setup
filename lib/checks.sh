#!/usr/bin/env bash

is_installed() {
    command -v "$1" >/dev/null 2>&1
}

directory_exists() {
    [[ -d "$1" ]]
}

file_exists() {
    [[ -f "$1" ]]
}

require_root() {
    if [[ "$EUID" -ne 0 ]]; then
        echo "Please run as root."
        exit 1
    fi
}

is_wsl() {
    grep -qi microsoft /proc/version
}