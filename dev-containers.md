# 📦 Dev Containers: Creating Portable Environments with VS Code

This guide shows you how to set up a containerized development environment using [Dev Containers](https://containers.dev/) in Visual Studio Code. It builds on the base system setup and walks through how to create a `.devcontainer/`, what it does, and how to understand and customize its configuration.

---

## 🧠 What’s a Dev Container?

A **Dev Container** is a complete development environment, defined as code. It runs inside a Docker container but integrates seamlessly with VS Code.

- 🔄 Reproducible: Any machine with VS Code + Docker can run it
- 🧼 Isolated: Keeps languages, tools, and dependencies out of your OS
- 🛠 Configurable: You define the environment using simple JSON + Docker

---

## 🧭 Creating a Dev Container (GUI-First)

> You don’t need to write files manually — VS Code does the heavy lifting.

### Step-by-Step

1. Open your project folder in VS Code
2. Press `F1` (or `Ctrl+Shift+P`) to open the Command Palette
3. Type: `Dev Containers: Add Dev Container Configuration Files`
4. Choose a starting point (Node.js, Python, etc.)
5. VS Code creates a `.devcontainer/` folder with:
   - `devcontainer.json`
   - A `Dockerfile` or template setup

Once created, VS Code will prompt to **Reopen in Container** — click it.  
Docker will build your container and connect VS Code directly into it.

---

## 📁 What’s in `.devcontainer/`

```
my-project/
├── .devcontainer/
│   ├── devcontainer.json
│   └── Dockerfile OR docker-compose.yml
├── src/
├── package.json
└── README.md
```

---

## 🛠 devcontainer.json: Field Breakdown

Here’s a minimal example:

```json
{
  "name": "Node Dev",
  "build": {
    "dockerfile": "Dockerfile"
  },
  "extensions": [
    "dbaeumer.vscode-eslint",
    "esbenp.prettier-vscode"
  ],
  "forwardPorts": [3000],
  "postCreateCommand": "npm install"
}
```

### Key Fields

| Field | Description |
|-------|-------------|
| `name` | Name of the container (appears in VS Code) |
| `build` | How to build the container (typically points to a `Dockerfile`) |
| `dockerComposeFile` | Optional – use instead of `build` if using `docker-compose.yml` |
| `service` | Required if using Docker Compose – which service VS Code should connect to |
| `workspaceFolder` | The default folder opened in VS Code (e.g., `/workspace`) |
| `forwardPorts` | Ports to make accessible from your host (e.g., 3000, 5000) |
| `postCreateCommand` | A command that runs after the container is built (e.g., install deps) |
| `extensions` | VS Code extensions to install *inside* the container |

---

## 🧪 Example Dev Container Configs

### ✅ Node.js Example

`.devcontainer/Dockerfile`

```Dockerfile
FROM node:18

WORKDIR /workspace
COPY package*.json ./
RUN npm install
```

`.devcontainer/devcontainer.json`

```json
{
  "name": "Node Dev",
  "build": {
    "dockerfile": "Dockerfile"
  },
  "extensions": [
    "dbaeumer.vscode-eslint",
    "esbenp.prettier-vscode"
  ],
  "forwardPorts": [3000],
  "postCreateCommand": "npm install"
}
```

---

### ✅ Python Example

`.devcontainer/Dockerfile`

```Dockerfile
FROM python:3.11

WORKDIR /workspace
COPY requirements.txt ./
RUN pip install -r requirements.txt
```

`.devcontainer/devcontainer.json`

```json
{
  "name": "Python Dev",
  "build": {
    "dockerfile": "Dockerfile"
  },
  "extensions": [
    "ms-python.python",
    "ms-python.vscode-pylance"
  ],
  "postCreateCommand": "pip install -r requirements.txt"
}
```

---

## 🐳 Dockerfile vs Docker Compose

- Use a **Dockerfile** if you only need one container (e.g., Node app or Python script).
- Use **Docker Compose** if you have multiple services (backend + DB, etc.).

You don’t need to decide now — this guide is for the basics. Stack-specific examples will go deeper.

---

## 🚀 Next Steps

Now that you know how to build and customize a dev container, choose a stack guide:

- [JavaScript Setup](./stacks/javascript.md)
- [MERN Stack Setup](./stacks/mern-stack.md)
- [Python Setup](./stacks/python.md)

You’ve got the foundation — now it’s time to code in containers. 💻🔥
