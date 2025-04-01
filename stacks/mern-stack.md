# 🧱 MERN Stack Development: Standard Setup

This guide outlines a standard container-based setup for developing MERN (MongoDB, Express, React, Node.js) applications in a fully isolated, reproducible environment.

It assumes you’ve completed the [Base Setup](../base-setup.md) and understand how [Dev Containers](../dev-containers.md) work.

---

## 🔁 Base System Revisited

Ensure your system has:

- Docker Desktop running (with WSL2 backend on Windows)
- Visual Studio Code with Dev Containers extension
- A clean workspace on your Dev Drive (optional but recommended)

Revisit if needed:
- [`base-setup.md`](../base-setup.md)
- [`dev-containers.md`](../dev-containers.md)

---

## 📦 Standard Setup: MERN Stack

This setup is ideal for:

- Fullstack development with isolated backend/frontend
- Projects requiring MongoDB or multiple services
- Scalable containerized app architecture

### Suggested Structure

```
mern-app/
├── .devcontainer/
│   ├── devcontainer.json
│   └── docker-compose.yml
├── backend/
│   └── package.json
├── frontend/
│   └── package.json
├── data/                  # MongoDB volume
└── mern-app.code-workspace
```

---

## ⚙️ Dev Container Config Files

### `.devcontainer/docker-compose.yml`

```yaml
version: "3"

services:
  backend:
    build: ./backend
    volumes:
      - ./backend:/workspace
    working_dir: /workspace
    command: npm run dev
    ports:
      - 5000:5000

  frontend:
    build: ./frontend
    volumes:
      - ./frontend:/workspace
    working_dir: /workspace
    command: npm start
    ports:
      - 3000:3000

  mongo:
    image: mongo
    volumes:
      - ./data:/data/db
    ports:
      - 27017:27017
```

---

### `.devcontainer/devcontainer.json`

```json
{
  "name": "MERN Dev",
  "dockerComposeFile": "docker-compose.yml",
  "service": "backend",
  "workspaceFolder": "/workspace",
  "shutdownAction": "stopCompose",
  "extensions": [
    "dbaeumer.vscode-eslint",
    "esbenp.prettier-vscode",
    "xabikos.ReactSnippets"
  ],
  "forwardPorts": [3000, 5000, 27017],
  "postCreateCommand": "npm install"
}
```

---

## 📂 Example Backend `Dockerfile` (at `backend/Dockerfile`)

```Dockerfile
FROM node:18

WORKDIR /workspace
COPY package*.json ./
RUN npm install
```

Repeat similarly for `frontend/Dockerfile`.

---

## 🧰 VS Code Extensions (Inside Container)

| Extension | ID |
|-----------|----|
| ✅ ESLint | `dbaeumer.vscode-eslint` |
| ✅ Prettier | `esbenp.prettier-vscode` |
| ⚛️ React Snippets | `xabikos.ReactSnippets` |
| 📘 REST Client | `humao.rest-client` |
| 🧠 Path Intellisense | `christian-kohler.path-intellisense` |

---

## 🧠 Optional: Use a VS Code Workspace

Use a `.code-workspace` file to group both frontend + backend and define global settings.

Example:

```json
{
  "folders": [
    { "path": "frontend" },
    { "path": "backend" }
  ],
  "settings": {
    "editor.formatOnSave": true
  },
  "extensions": {
    "recommendations": [
      "dbaeumer.vscode-eslint",
      "esbenp.prettier-vscode",
      "xabikos.ReactSnippets"
    ]
  }
}
```

---

## 🚀 Workflow

1. Clone the repo or create folder structure
2. Add `.devcontainer/` with files above
3. Open in VS Code → **Reopen in Container**
4. Access your app:
   - Frontend: `http://localhost:3000`
   - Backend API: `http://localhost:5000`
   - MongoDB: `localhost:27017` (via Mongo client)

---

## 📎 Next Steps

- Add database seeding scripts or `.env` support
- Expand to multiple containers (Redis, Nginx, etc.)
- Explore [Codespaces compatibility](https://docs.github.com/en/codespaces)

Your fullstack containerized dev flow is live 🔥
