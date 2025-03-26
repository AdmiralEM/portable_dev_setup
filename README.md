# Portable Development Setup

💻 A clean, container-based approach to coding across stacks — consistent, isolated, and easy to replicate.

---

## 🌱 Why Portable Development?

Installing tools globally can get messy fast — especially when you're learning, working across stacks, or switching machines. This project offers a better way:

- ✅ Keep your system clean — no Node, Python, or databases on your OS
- 🔁 Seamlessly switch between languages and stacks
- 🧳 Clone, code, commit — anywhere, on any OS
- ⚙️ Leverage Docker + VS Code Dev Containers for consistent environments

Whether you're a beginner or a seasoned dev, this approach saves time, reduces bugs, and just works.

---

## 🧰 What's Included

This repo is your foundation for isolated development. You'll find:

- 🔧 [Base Setup](./base-setup.md): Core tools, environment philosophy, and host setup
- 📦 [JavaScript](./stacks/javascript.md): Node, npm/yarn, lightweight JS dev
- 🧱 [MERN Stack](./stacks/mern-stack.md): Mongo, Express, React, Node — all containerized
- 🐍 [Python](./stacks/python.md): Python, pipenv/poetry, optional Jupyter
- 📁 [Container Templates](./templates/): Ready-to-use `devcontainer.json`, `Dockerfile`, and more

Each guide includes:
- Dev container setup (single or multi-container)
- Recommended folder structure
- Dev workflow (install, run, debug, test)

---

## ⚡ Quickstart

> Already have Docker + VS Code + the Dev Containers extension?

1. Clone this repo or an example project
2. Open it in VS Code
3. Select **“Reopen in Container”**
4. Start coding — no local setup required

---

## 💡 Core Principles

- **Isolated**: Each project runs in its own clean, self-contained environment
- **Portable**: Works the same across Windows, macOS, and Linux
- **Versioned**: Everything lives in Git — no guessing, no drift
- **Minimal**: Nothing extra on your system; no global installs
- **Extensible**: Add new stacks or services without changing your workflow

---

## 👥 Who This Is For

- Learners who want a safe, consistent setup
- Devs switching between JS, Python, or other stacks
- Freelancers or side-project junkies juggling multiple projects
- Anyone who wants a clean development workflow they can take anywhere

---

## 🔍 Common Questions

**Why containers over virtual machines?**  
Containers are faster, lighter, and integrate directly into VS Code. You get the isolation of a VM with the performance of native development.

**Is this compatible with GitHub Codespaces?**  
Yes. The same `.devcontainer` setup works out of the box with Codespaces.

**Does this work on other OSes?**  
Yep. It’s fully cross-platform — just install Docker + VS Code and you’re good to go.

---

## 🧪 In Progress / Coming Soon

- More stack guides (Rust, Go, multi-language combos)
- Debugging tips and container health checks
- GitHub repo templates for rapid project bootstrapping

---

## 📄 License


---

