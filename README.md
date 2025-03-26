# Portable Development Setup

💻 A clean, container-based approach to fullstack development — isolated, reproducible, and ready to go anywhere.

---

## 🌱 Why Portable Development?

Installing dev tools globally can get messy fast — especially when you're learning, working across stacks, or switching machines. This project offers a better way:

- ✅ Keep your system clean — no global installs of Node, Python, databases, etc.
- 🔁 Seamlessly switch between stacks and languages
- 🧳 Work from any machine or OS with zero setup
- ⚙️ Powered by Docker + VS Code Dev Containers

Whether you're just starting out or working across multiple stacks, this workflow saves time, reduces bugs, and keeps things organized.

---

## 🧰 What’s Included

This repo serves as a base for portable development environments. You'll find:

- 🔧 [Base Setup](./base-setup.md): Core tooling, setup steps, and philosophy
- 📦 [JavaScript Guide](./stacks/javascript.md)
- 🧱 [MERN Stack Guide](./stacks/mern-stack.md)
- 🐍 [Python Guide](./stacks/python.md)
- 📁 [Container Templates](./templates/): Dev container configs, Dockerfiles, and examples

Each stack includes:
- A dev container config (Dockerfile or Compose)
- Folder structure suggestions
- Workflow steps (install, run, debug, test)

---

## ⚡ Quickstart

> Already have Docker + VS Code + the Dev Containers extension installed?

1. Clone this repo (or any configured project)
2. Open the folder in VS Code
3. Choose **“Reopen in Container”**
4. Start coding — no host setup needed

---

## 💡 Core Principles

- **Isolated**: Each project runs in its own environment
- **Portable**: Works the same across Windows, macOS, and Linux
- **Versioned**: Everything is defined in code and tracked in Git
- **Minimal**: Nothing installed globally on your host OS
- **Extensible**: Add stacks or services without breaking your flow

---

## 👥 Who This Is For

- New coders who want a safe, consistent environment
- Developers working across multiple stacks
- Freelancers or side-project devs managing isolated projects
- Anyone who values a clean, reproducible dev workflow

---

## 🔍 Common Questions

**Why containers instead of virtual machines?**  
Containers are faster, lighter, and integrate directly into VS Code. You get isolation without the bloat.

**Can I use this with GitHub Codespaces?**  
Yes — everything here is fully compatible with Codespaces.

**Will this work on Mac or Linux?**  
Absolutely. As long as you have Docker and VS Code installed, you're good to go.

---

## 🧪 In Progress / Coming Soon

- Additional stack guides (Rust, Go, Python + JS combos)
- Debugging workflows and container health tips
- GitHub template repos for instant bootstrapping

---

## 📄 License

This project is licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

You're free to use, modify, and share — just keep it open and preserve the same license in derivatives.
