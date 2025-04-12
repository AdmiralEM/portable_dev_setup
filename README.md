# 🧰 Portable Development Setup

> *Stop polluting your system. Start building like a pro.*

A clean, consistent, and fully portable development environment — engineered for devs who want control, clarity, and zero local mess.

Built to work across any Windows 11 machine using WSL2, Docker, and VS Code — this is how you should be developing in 2025.

---

## Why This Exists

If you're tired of:

- Installing language versions directly on Windows
- Dealing with path weirdness, environment rot, or global tool conflicts
- Wishing your setup worked exactly the same across machines

→ This repo solves that.

Containers for code.  
Freedom for your system.

---

## Architecture at a Glance

| Layer | Tools | Role |
|-------|-------|------|
| Host | VS Code + WSL2 | Lightweight Editor & Shell |
| Runtime | Docker CE (in WSL2) | Container Engine |
| Project | Dev Containers | Language-agnostic Workspaces |

---

## Requirements

### Must-Have

- Windows 11 with WSL2 installed
- Ubuntu (or similar) in WSL2
- Visual Studio Code with Remote & Dev Container Extensions
- Docker CE installed inside WSL2 (No Docker Desktop!)

### Optional Tools

| Tool | Why? |
|------|------|
| GitHub Desktop | Use it if you like it. VS Code Git works fine too. |
| Windows Terminal | Makes working with multiple shells easier. |

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

## Setup Flow

1. [`base-setup.md`](./base-setup.md) → Prepare your system (WSL2 + Docker CE)
2. [`dev-containers.md`](./dev-containers.md) → Understand Dev Containers
3. Pick a stack guide:
   - [`javascript.md`](./stacks/javascript.md)
   - [`mern-stack.md`](./stacks/mern-stack.md)
   - [`python.md`](./stacks/python.md)

Build once. Run anywhere.

---

## License

[GNU General Public License v3.0](./LICENSE)

---

## Final Thought

> "Clean environments build clean code."  
> – Probably a Dev smarter than me.
