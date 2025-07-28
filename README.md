# ⚙️ Neovim & Terminal Configuration

This repository contains my personal dotfiles for a fast and efficient development environment on Linux, featuring Neovim, WezTerm, Fish Shell, and Starship.

---

## 🚀 Key Components

* Nerd font - `config.font = wezterm.font('JetBrainsMono Nerd Font Mono', { weight = 'Bold' })`
* **Editor:** Neovim (v0.10+) with Lazy.nvim for plugin management.
  ```bash
  sudo add-apt-repository ppa:neovim-ppa/unstable -y
  sudo apt update
  sudo apt install neovim

* **Terminal:** WezTerm (GPU-accelerated, cross-platform).
* **Shell:** Fish Shell (user-friendly, smart defaults).
* **Prompt:** Starship (fast, customizable, contextual).
* **OS:** Ubuntu (or other Debian-based Linux, including WSL).

---

## ✨ Features

* **Fast Startup & Performance:** Optimized WezTerm, Fish, and Lazy.nvim setup.
* **Enhanced Editing:** Tree-sitter for intelligent syntax, indentation, and text objects. Telescope for fuzzy finding and live grepping.
* **Clean UI:** Kanagawa colorscheme with terminal transparency.
* **Essential Tools:** Integrated `ripgrep` for fast project-wide search.

---

## 🛠️ Setup Guide

Follow these steps to get the environment running on your system.

### 1. **System Dependencies**

Ensure these essential tools are installed on your Linux system:
- languages runtime :used

```bash
sudo apt update
sudo apt install git curl build-essential ripgrep
```
Nvim lsp dependency for mason-lspconfig
```bash
git clone https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/nvim/start/nvim-lspconfig
```
For the debugger currently only golang needs delv
```bash
sudo apt-get install delve
```

For neoteree 3rd/image.nvim dependency 
```bash
 # ubuntu system
 sudo apt-get install imagemagick libmagickwand-dev
```
btw included the lsp for:
yaml files
sql files

download them from os


