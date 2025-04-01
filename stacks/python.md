# 🐍 Python Development: Standard Setup

This guide outlines a container-based standard setup for general Python development. It assumes you’ve completed the [Base Setup](../base-setup.md) and understand [Dev Containers](../dev-containers.md).

---

## 🔁 Base System Revisited

Ensure your system has:

- Docker Desktop running
- VS Code with the Dev Containers extension
- A clean workspace (e.g., on your Dev Drive)

Review if needed:
- [`base-setup.md`](../base-setup.md)
- [`dev-containers.md`](../dev-containers.md)

---

## 📦 Standard Setup: Python Project

This setup is ideal for:

- Backend APIs (Flask, FastAPI)
- CLI tools and scripts
- Jupyter notebook development
- Clean environments for dependency management

### Suggested Structure

```
python-project/
├── .devcontainer/
│   ├── devcontainer.json
│   └── Dockerfile
├── src/
│   └── main.py
├── requirements.txt
└── python-project.code-workspace
```

---

## ⚙️ Dev Container Files

### `.devcontainer/Dockerfile`

```Dockerfile
FROM python:3.11

WORKDIR /workspace
COPY requirements.txt ./
RUN pip install -r requirements.txt
```

---

### `.devcontainer/devcontainer.json`

```json
{
  "name": "Python Dev",
  "build": {
    "dockerfile": "Dockerfile"
  },
  "settings": {
    "python.pythonPath": "/usr/local/bin/python"
  },
  "extensions": [
    "ms-python.python",
    "ms-python.vscode-pylance"
  ],
  "forwardPorts": [],
  "postCreateCommand": "pip install -r requirements.txt"
}
```

---

## 🧩 Optional Add-ons

| Tool | Additions |
|------|-----------|
| Flask | Add `flask` to `requirements.txt`, set up `app.py` |
| FastAPI | Add `fastapi` and `uvicorn`, expose port 8000 |
| Jupyter | Add `notebook` or `jupyterlab` to `requirements.txt` |
| Poetry | Swap `pip` for `poetry` and adjust config |
| Debugging | Create a `.vscode/launch.json` config if needed |

---

## 🧰 VS Code Extensions (Inside Container)

| Extension | ID |
|-----------|----|
| ✅ Python | `ms-python.python` |
| ✅ Pylance | `ms-python.vscode-pylance` |
| 🧪 Jupyter | `ms-toolsai.jupyter` *(if using notebooks)* |
| 🧠 Path Intellisense | `christian-kohler.path-intellisense` |

---

## 🧠 Optional: VS Code Workspace File

Use a `.code-workspace` file to store editor preferences and extension recommendations.

```json
{
  "folders": [
    { "path": "." }
  ],
  "settings": {
    "python.linting.enabled": true,
    "python.formatting.provider": "black",
    "editor.formatOnSave": true
  },
  "extensions": {
    "recommendations": [
      "ms-python.python",
      "ms-python.vscode-pylance",
      "ms-toolsai.jupyter"
    ]
  }
}
```

---

## 🚀 Workflow

1. Create project folder and add a minimal `requirements.txt`
2. Add `.devcontainer/` setup from above
3. Open in VS Code → **Reopen in Container**
4. Run your code or open notebooks inside the container

---

## 📎 Next Steps

- Explore API frameworks (Flask, FastAPI)
- Add PostgreSQL or Redis with Docker Compose
- Build CLI tools or try Python with Jupyter Lab

Your Python container dev environment is ready to roll 🐍🚀
