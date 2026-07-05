# Kali Bootstrap

> 🚀 A production-ready bootstrap toolkit for Kali Linux (WSL, Virtual Machine, and Bare Metal).

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-Kali_Linux-success)
![Shell](https://img.shields.io/badge/shell-Bash-orange)

---

## Overview

Kali Bootstrap automates the setup of a complete penetration testing and bug bounty environment.

Instead of manually installing dozens of tools every time you reinstall Kali, this project provides a modular installer capable of configuring an entire workspace with a single command.

Designed for:

- Bug Bounty Hunters
- Penetration Testers
- CTF Players
- Security Researchers
- Students
- WSL Kali Users

---

# Features

- Automated system update
- Professional workspace creation
- Go environment setup
- Python environment setup
- Git configuration
- Recon tools installation
- Wordlists installation
- Nuclei templates
- Verification script
- Modular installer
- Idempotent execution

---

# Installed Tools

### Recon

- Subfinder
- Httpx
- Katana
- Nuclei
- Naabu
- Dnsx
- Notify
- Gau
- Waybackurls
- Assetfinder
- QSReplace
- Anew
- Dalfox
- FFUF

### Utilities

- Git
- Curl
- Wget
- Tree
- Tmux
- Ripgrep
- Fd
- Python
- Go
- Nmap

---

# Wordlists

- SecLists
- PayloadsAllTheThings
- Assetnote Wordlists
- OneListForAll
- Trickest Wordlists

---

# Workspace

```
~/bugbounty
~/labs
~/projects
~/tools
~/notes
~/payloads
~/loot
~/templates
~/downloads
```

---

# Installation

```bash
git clone https://github.com/<username>/kali-bootstrap.git

cd kali-bootstrap

chmod +x setup.sh

./setup.sh --all
```

---

# Supported Platforms

- Kali Linux (WSL)
- Kali Linux Virtual Machine
- Native Kali Linux

---

# Roadmap

- [ ] Base installer
- [ ] Go tool installer
- [ ] Python environment
- [ ] Wordlists
- [ ] Docker support
- [ ] Burp Suite helper
- [ ] Optional modules

---

# License

MIT