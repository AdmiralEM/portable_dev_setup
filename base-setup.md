# 🧱 Base Setup: Your Portable Dev Environment Foundation

This guide walks you through preparing your system to use fully isolated, containerized dev environments with Visual Studio Code and Docker — no clutter on your host OS.

---

## 🛠 Required Tools (Install on Your Host OS)

Install the following:

### 1. [Visual Studio Code](https://code.visualstudio.com/)
Install and launch VS Code.

### 2. [Docker Desktop](https://www.docker.com/products/docker-desktop)
Used to run containers that hold your dev environment.

- On Windows, enable **WSL2** or **Hyper-V** in Docker settings.
- Ensure it’s running before using containers in VS Code.

### 3. [Git](https://git-scm.com/) or [GitHub Desktop](https://desktop.github.com/)
Used to clone and manage repositories.

---

## 🧩 Recommended (for Windows Users)

### ✅ WSL2 (Windows Subsystem for Linux)
Recommended for better Docker performance and cross-platform compatibility.

```bash
wsl --install
```

Then restart your computer and select a Linux distro (e.g., Ubuntu).

### ✅ Dev Drive (Windows 11 Only)
A special performance-optimized volume for developer workloads (uses the ReFS file system).

- Create via: **Settings > Storage > Advanced Storage Settings > Disks & Volumes > Create Dev Drive**
- Mount it as `D:\` for a clean, dedicated workspace

**Example Setup:**
- Your GitHub repos clone to `D:\project-name`
- Keeps all your dev work away from `C:\`

---

## 🧰 Core VS Code Extensions (Host System)

Install these from the Extensions panel (`Ctrl+Shift+X` in VS Code). These are used across all stacks:

| Extension | ID | Purpose |
|-----------|----|---------|
| ✅ Dev Containers | `ms-vscode-remote.remote-containers` | Enables working inside containers |
| ✅ Docker | `ms-azuretools.vscode-docker` | Manage containers and images |
| ✅ GitHub | `github.vscode-pull-request-github` | View PRs and issues inside VS Code |
| ✨ Copilot (optional) | `github.copilot` | AI suggestions while coding |
| ✍️ Spell Checker | `streetsidesoftware.code-spell-checker` | Spellcheck for code, comments, markdown |
| 📘 Markdown Tools | `yzhang.markdown-all-in-one` | Live preview, TOC, formatting help |

---

## 📦 Creating a New Project (GUI-First)

> You don’t need the terminal to get started — VS Code makes this easy.

### Step 1: Open VS Code → File → New Folder
- Create a new folder and open it.
- You may be asked: **“Do you trust the authors of this folder?”** Click **Yes**.

### Step 2: Add Dev Container Config
- Open the Command Palette (`F1` or `Ctrl+Shift+P`)
- Type: `Dev Containers: Add Dev Container Configuration Files`
- Choose a stack (e.g., Node.js, Python)
- VS Code creates a `.devcontainer/` folder with configuration files

### Step 3: Reopen in Container
- After setup, VS Code will prompt you: **“Reopen in Container?”**
- Click **Yes**
- It will build and start your environment inside a Docker container

---

## 💻 (Optional) Advanced CLI Workflow

```bash
mkdir my-project && cd my-project
git init
mkdir .devcontainer
touch .devcontainer/devcontainer.json
```

Then manually add a Dockerfile or devcontainer config as needed.

---

## ⚙️ Docker Compose for Multi-Service Projects

Use `docker-compose.yml` if your project has a backend, frontend, database, etc.

In `.devcontainer/devcontainer.json`:

```json
{
  "name": "Fullstack Dev",
  "dockerComposeFile": "../docker-compose.yml",
  "service": "backend",
  "workspaceFolder": "/workspace",
  "shutdownAction": "stopCompose",
  "forwardPorts": [3000, 5000]
}
```

---

## ✅ Tips & Best Practices

- **Don't install Node, Python, etc. globally** — containers handle this
- Put all dependencies inside the container (`npm install`, `pip install`, etc.)
- Keep your `.devcontainer/` and `Dockerfile` under version control
- Use Docker volumes if you need persistent storage (e.g., databases)

---

## 🧪 Verify Your Setup

Once inside your dev container:

- Run `node -v` or `python --version`
- Start your app inside the container (e.g., `npm start`)
- Visit the forwarded port in your browser (e.g., `localhost:3000`)

---

## 🧭 What’s Next

Pick your stack and get building:

- [JavaScript Setup](./stacks/javascript.md)
- [MERN Stack Setup](./stacks/mern-stack.md)
- [Python Setup](./stacks/python.md)

Welcome to your clean, portable dev workflow 🚀
