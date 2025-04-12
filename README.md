# Portable Development Setup

A clean, consistent, portable development environment for multi-language projects — designed to stay out of your way and off your host system.

## Philosophy

- Keep your OS clean
- Use containers for everything
- Stay stack-agnostic until necessary
- Minimal required tools on Windows
- Work identically across machines and OS

---

## Core Workflow

| Layer | Tools Used | Purpose |
|-------|------------|---------|
| Host System | VS Code + WSL2 | Editor and integration |
| Container Engine | Docker CE (in WSL2) | Container runtime |
| Project Environment | Dev Containers | Language- or stack-specific setups |

---

## Requirements

### Must-Have

- Windows 11 with WSL2 installed
- Ubuntu (or another distro) via WSL2
- Visual Studio Code with Remote & Dev Containers extensions
- Docker CE installed inside WSL2

### Optional

| Tool | Purpose |
|------|---------|
| GitHub Desktop | Optional Git client — VS Code Git tools are sufficient |
| Windows Terminal | Recommended for better terminal management |

---

## Repo Structure

```
Portable-Development-Setup/
├── README.md
├── base-setup.md
├── dev-containers.md
├── stacks/
│   ├── javascript.md
│   ├── mern-stack.md
│   └── python.md
├── templates/
│   ├── devcontainer.json
│   ├── Dockerfile
│   └── docker-compose.yml
└── LICENSE
```

---

## Recommended Reading Order

1. [`base-setup.md`](./base-setup.md) → Install & configure host tools
2. [`dev-containers.md`](./dev-containers.md) → Understand & build Dev Containers
3. Stack Guides:
   - [`javascript.md`](./stacks/javascript.md)
   - [`mern-stack.md`](./stacks/mern-stack.md)
   - [`python.md`](./stacks/python.md)

---

## License

GNU General Public License v3.0
