#!/usr/bin/env bash

set -euo pipefail

PROJECT_NAME="Kali Bootstrap"
VERSION="0.1.0"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_DIR="$SCRIPT_DIR/install"

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
NC="\033[0m"

print_banner() {
cat << EOF

===========================================
        $PROJECT_NAME
             v$VERSION
===========================================

EOF
}

info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

success() {
    echo -e "${GREEN}[OK]${NC} $1"
}

warning() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

usage() {

cat << EOF

Usage:

./setup.sh [OPTION]

Options

--all
--system
--workspace
--go
--go-tools
--python
--wordlists
--nuclei
--git
--cleanup
--verify
--help

EOF

}

run_script() {

local script="$1"

if [[ -f "$INSTALL_DIR/$script" ]]; then
    bash "$INSTALL_DIR/$script"
else
    error "$script not found."
    exit 1
fi

}

print_banner

[[ $# -eq 0 ]] && usage && exit 0

case "$1" in

--all)
run_script "01_system.sh"
run_script "02_directories.sh"
run_script "03_go.sh"
run_script "04_go_tools.sh"
run_script "05_python.sh"
run_script "06_wordlists.sh"
run_script "07_nuclei.sh"
run_script "08_git.sh"
run_script "09_cleanup.sh"
;;

--system)
run_script "01_system.sh"
;;

--workspace)
run_script "02_directories.sh"
;;

--go)
run_script "03_go.sh"
;;

--go-tools)
run_script "04_go_tools.sh"
;;

--python)
run_script "05_python.sh"
;;

--wordlists)
run_script "06_wordlists.sh"
;;

--nuclei)
run_script "07_nuclei.sh"
;;

--git)
run_script "08_git.sh"
;;

--cleanup)
run_script "09_cleanup.sh"
;;

--verify)
bash verify.sh
;;

--help)
usage
;;

*)
error "Unknown option."
usage
exit 1
;;

esac

success "Completed."