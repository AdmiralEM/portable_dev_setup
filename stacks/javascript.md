# 🟨 JavaScript Development: Standard Setup

This guide outlines the **standard container setup** for general JavaScript development. It assumes you've already followed the [base system setup](../base-setup.md) and understand how to use [Dev Containers](../dev-containers.md) in VS Code.

---

## 🔁 Base System Revisited

Before continuing, make sure you have:

- Docker Desktop running
- Visual Studio Code installed
- Dev Containers extension installed
- A Dev Drive or clean workspace set up

If not, revisit:
- [`base-setup.md`](../base-setup.md)
- [`dev-containers.md`](../dev-containers.md)

---

## 📦 Standard Setup: JS Development

This setup is ideal for:

- Standalone JavaScript projects
- Utility scripts and tools
- Minimal backend services (without DB)
- Prepping for frontend or MERN apps

### Recommended Structure

```
js-project/
├── .devcontainer/
│   ├── devcontainer.json
│   └── Dockerfile
├── src/
├── package.json
└── README.md
```

---

## ⚙️ Dev Container Files

### `.devcontainer/Dockerfile`

```Dockerfile
FROM node:18

WORKDIR /workspace
COPY package*.json ./
RUN npm install
```

---

### `.devcontainer/devcontainer.json`

```json
{
  "name": "JS Dev",
  "build": {
    "dockerfile": "Dockerfile"
  },
  "extensions": [
    "dbaeumer.vscode-eslint",
    "esbenp.prettier-vscode"
  ],
  "settings": {
    "editor.formatOnSave": true
  },
  "forwardPorts": [],
  "postCreateCommand": "npm install"
}
```

---

## 🧩 Optional Add-ons

These are not required, but helpful depending on your workflow:

| Tool | Additions |
|------|-----------|
| TypeScript | Add `typescript` to `devDependencies`, adjust `tsconfig.json` |
| ESLint Configs | Add custom `.eslintrc.json` or use `eslint --init` |
| Prettier | Add `.prettierrc`, or use VS Code settings |
| nodemon | Useful for script reloading (`npm install -D nodemon`) |
| dotenv | For local environment variable files (`npm install dotenv`) |

---

## 🧰 VS Code Extensions (Inside Container)

Install via `devcontainer.json` or manually if experimenting:

| Extension | ID |
|-----------|----|
| ✅ ESLint | `dbaeumer.vscode-eslint` |
| ✅ Prettier | `esbenp.prettier-vscode` |
| 📘 Markdown | `yzhang.markdown-all-in-one` |
| 📁 Path Intellisense | `christian-kohler.path-intellisense` |

---

## 🚀 Usage Workflow

1. Clone or create your JS project folder
2. Add the `.devcontainer/` setup (or use `F1 → Add Dev Container Config`)
3. Reopen in container
4. Inside the container:
   - Run `npm install`
   - Start development (`node src/index.js` or `npm run dev`)
5. All code runs inside a clean, isolated environment

---

## 📎 Next Steps

- Move to [MERN Stack](./mern-stack.md) for fullstack apps
- Or try [Python Setup](./python.md) for backend or scripting work
- You can also create a reusable [template](../templates/) from this setup

Your JavaScript environment is now portable, predictable, and containerized ✨
