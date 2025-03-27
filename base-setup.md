# 🧱 Base Setup: Portable Development System Preparation

This document prepares your system to run containerized development environments. It focuses on host configuration — tools, settings, and practices to keep your system clean, consistent, and ready for any stack.

---

## 🛠 Required Tools (Install Manually)

Install the following:

- [Visual Studio Code](https://code.visualstudio.com/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- [Git](https://git-scm.com/) or [GitHub Desktop](https://desktop.github.com/)

> Installation steps are not covered here. If you're uncomfortable installing these, a container-based workflow may not be the best starting point.

---

## ⚙️ Recommended Configuration (Especially for Windows Users)

### ✅ WSL2 (Windows Subsystem for Linux)
- Improves performance and compatibility when working with containers on Windows.
- After installing Docker Desktop, make sure the **WSL2 backend is enabled**.
- From Docker Desktop:  
  `Settings → General → Use the WSL 2 based engine`

> You can install WSL with: `wsl --install`  
> Choose a distro like Ubuntu when prompted.

---

### ✅ Dev Drive (Windows 11)
- Use a [Dev Drive](https://learn.microsoft.com/en-us/windows/dev-drive/) to isolate your projects on a performance-optimized volume.
- Supports the ReFS file system and is ideal for handling things like `node_modules`.

**Suggested Setup:**
- Mount it as `D:\` — short, fast, and clearly for development.
- Set your GitHub Desktop repo root to `D:\` so projects are cloned to `D:\project-name`.

---

## 🧰 Core VS Code Extensions (Host System Only)

Install these in **your main VS Code environment**:

| Extension | ID | Purpose |
|-----------|----|---------|
| ✅ Dev Containers | `ms-vscode-remote.remote-containers` | Enables `.devcontainer` workflows |
| ✅ Docker | `ms-azuretools.vscode-docker` | Manage containers and volumes |
| ✅ GitHub | `github.vscode-pull-request-github` | PR and issue support |
| ✨ Copilot (optional) | `github.copilot` | AI assistance |
| ✍️ Spell Checker | `streetsidesoftware.code-spell-checker` | Clean up typos in code/docs |
| 📘 Markdown Tools | `yzhang.markdown-all-in-one` | Better writing/editing for markdown files |

---

## 🧪 (Optional) Test Your Setup

You can verify your system setup with a simple Git + Markdown test:

1. Create a test repo on GitHub (e.g., `portable-setup-check`)
2. Clone it to your Dev Drive (`D:\portable-setup-check`)
3. Open it in VS Code
4. Create and preview a `README.md` file
5. Commit and push back to GitHub

This confirms Git, VS Code, filesystem access, and Markdown editing are working correctly.

---

## 🧭 Next Step

You're now ready to begin using containerized environments.

👉 Head to [`dev-containers.md`](./dev-containers.md)  
to learn how to create and configure isolated dev environments using `.devcontainer/`.

This is where your portable, reproducible stack begins. 🚀
