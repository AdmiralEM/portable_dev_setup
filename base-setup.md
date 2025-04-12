# 🧱 Base Setup: Portable Development System Preparation

This document prepares your system to run containerized development environments. It focuses on host configuration — tools, settings, and practices to keep your system clean, consistent, and ready for any stack.

---

## 🛠 Required Tools (Install Manually)

### Core Tools

Install these on your host Windows 11 system:

- [Visual Studio Code](https://code.visualstudio.com/)
- [WSL2 (Windows Subsystem for Linux)](https://learn.microsoft.com/en-us/windows/wsl/install)
- [Ubuntu from Microsoft Store](https://apps.microsoft.com/store/detail/ubuntu/9PDXGNCFSCZV) (or another distro of your choice)

### Optional Tools

| Tool | Purpose | Notes |
|------|---------|-------|
| GitHub Desktop | Visual Git client | Optional; VS Code has integrated Git support |
| Windows Terminal | Nice-to-have | Good terminal experience for WSL and PowerShell |

---

## ⚙️ WSL2 Setup

Install WSL2 by running in PowerShell (Admin):

```bash
wsl --install
```

Restart your machine and select Ubuntu when prompted.

Ensure WSL2 is default:

```bash
wsl --set-default-version 2
```

---

## 🐳 Installing Docker Inside WSL2 (No Docker Desktop)

Enter WSL:

```bash
wsl
```

Update and install dependencies:

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y ca-certificates curl gnupg lsb-release
```

Add Docker GPG key:

```bash
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

Add Docker repository:

```bash
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg]   https://download.docker.com/linux/ubuntu   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

Install Docker CE:

```bash
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

Add your user to the Docker group:

```bash
sudo usermod -aG docker $USER
```

Restart WSL:

```bash
exit
wsl --shutdown
wsl
```

Test:

```bash
docker run hello-world
```

---

## 🧰 Core VS Code Extensions (Host System Only)

| Extension | ID | Purpose |
|-----------|----|---------|
| ✅ Dev Containers | `ms-vscode-remote.remote-containers` | Enables `.devcontainer` workflows |
| ✅ Docker | `ms-azuretools.vscode-docker` | Manage containers and volumes |
| ✅ GitHub | `github.vscode-pull-request-github` | PR and issue support |
| ✨ Copilot (optional) | `github.copilot` | AI assistance |
| ✍️ Spell Checker | `streetsidesoftware.code-spell-checker` | Clean up typos in code/docs |
| 📘 Markdown Tools | `yzhang.markdown-all-in-one` | Live preview, TOC, formatting help |
| ✅ Markdown Linting | `davidanson.vscode-markdownlint` | Enforces clean markdown style |
| 🎨 Better Comments | `aaron-bond.better-comments` | Color-coded comment types |
| 🎨 Colorize | `naumovs.color-highlight` | Highlights hex/RGB values in code |
| 🚀 Code Runner | `formulahendry.code-runner` | Quickly execute code snippets |
| 🧭 Project Manager | `alefragnani.project-manager` | Easily switch between projects |
| 🌍 Remote Dev (SSH + Tunnels) | `ms-vscode-remote.remote-ssh`, `remote-ssh-edit`, `remote-ssh-tunnels`, `remote-explorer` | Connect to and develop on remote machines |
| 🪟 WSL Support | `ms-vscode-remote.remote-wsl` | Integrates with WSL2 on Windows |
| 🧩 YAML | `redhat.vscode-yaml` | Helps edit `yaml` files like GitHub Actions, Docker Compose |

---

## 🧪 (Optional) Test Your Setup

Clone or create a test repo. Open in VS Code, run Markdown preview, and verify Git operations.

---

## 🧭 Next Step

👉 Proceed to [`dev-containers.md`](./dev-containers.md) to start using containerized environments.
