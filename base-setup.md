# 🧱 Base Setup: Your Portable Dev Environment Foundation

This guide outlines the **base setup** required for building containerized development environments. Whether you're working on a JavaScript project, a Python API, or something else entirely, these steps will get your system ready — clean, consistent, and portable.

---

## 🛠 Required Tools (Host System)

Install the following tools on **any supported OS (Windows/macOS/Linux):**

### 1. [Docker Desktop](https://www.docker.com/products/docker-desktop)
- Required for running containerized environments.
- Enable the **WSL2 backend** if you're on Windows.

### 2. [Visual Studio Code](https://code.visualstudio.com/)
- The primary editor for this setup.
- Install these extensions:
  - `Dev Containers` (official)
  - `Docker` (optional, for container management)

### 3. [Git](https://git-scm.com/) or [GitHub Desktop](https://desktop.github.com/)
- For cloning repositories and managing code versioning.
- Make sure Git is in your system’s PATH.

---

## 🗂 Recommended Folder Setup

You can keep all of your portable dev projects in one place for easy management:

```
/YourProjects
├── javascript-project/
├── python-api/
├── mern-todo-app/
└── Portable-Development-Setup/   ← this repo
```

If you're on Windows 11, consider using a **Dev Drive (ReFS)** for faster performance with lots of small files (like `node_modules`).

---

## 📦 Creating a New Project with Dev Containers

### Step 1: Create a folder for your project

```bash
mkdir my-project && cd my-project
git init  # optional
```

### Step 2: Create the `.devcontainer/` folder

Inside your project folder:

```
my-project/
└── .devcontainer/
    ├── devcontainer.json
    └── Dockerfile (or docker-compose.yml)
```

### Step 3: Add a `devcontainer.json`

This tells VS Code how to build and launch your container environment.

Example:

```json
{
  "name": "Node Dev",
  "build": {
    "dockerfile": "Dockerfile"
  },
  "settings": {},
  "extensions": [
    "dbaeumer.vscode-eslint",
    "esbenp.prettier-vscode"
  ],
  "forwardPorts": [3000],
  "postCreateCommand": "npm install"
}
```

You can also start with a VS Code template:
> `F1` → **Dev Containers: Add Dev Container Configuration Files...**

---

## 🐳 Using Docker Compose (Optional)

If your project has multiple services (like a database), you can use `docker-compose.yml` and point to it in `devcontainer.json`.

Example:

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

## ⚡ Launching the Dev Container

1. Open your project in VS Code
2. You'll be prompted to **"Reopen in Container"** — click it
3. VS Code will build and start the container
4. From here on out, everything runs *inside* the container — not on your OS

---

## ✅ Tips & Best Practices

- Don’t install languages (Node, Python, etc.) globally on your OS
- Put all dependencies inside the container (`npm install`, `pip install`, etc.)
- Keep your `devcontainer.json` and `Dockerfile` under version control
- Use Docker volumes for persistence (e.g., MongoDB data)

---

## 🧪 Verify Your Setup

Once you’ve opened your first dev container:

- Run `node -v` or `python --version` to confirm the environment
- Create a sample server or app and run it inside the container
- Use the forwarded port (like `localhost:3000`) in your browser

---

## 🧭 What’s Next

Now that your base system is ready, head to a stack-specific guide to configure a full dev environment:

- [JavaScript Setup](./stacks/javascript.md)
- [MERN Stack Setup](./stacks/mern-stack.md)
- [Python Setup](./stacks/python.md)

You’re now working in a fully portable development setup 🚀
