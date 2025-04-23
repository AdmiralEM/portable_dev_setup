# Stack: Next.js + Prisma + Tailwind

This is a **portable, reproducible dev container template** for building full-stack applications with:

- Next.js
- Tailwind CSS
- Prisma ORM
- TypeScript
- ESLint + Prettier

---

## Getting Started

### 1. Create a New Project
- Copy this stack folder into your new project directory.

### 2. Customize `package.template.json`
- Rename `package.template.json` to `package.json`
- Edit these fields:
  - `"name"` — your project’s short name
  - `"author"` — your name and email (optional)
  - `"license"` — typically `"MIT"`, `"GPL-3.0"`, or your preferred license

You can also customize `"scripts"` and any other fields to match your project’s needs.

### 3. Open in VS Code
- Open the project folder
- If prompted, reopen in Dev Container

### 4. First Launch Setup
- On first container build, `setup.sh` will install all necessary packages and initialize supporting config files (`tailwind.config.js`, Prisma schema, `.env`, etc.).

---

## Notes

- No global tools are installed — everything runs inside the Dev Container.
- This setup is designed for **maximum portability** across Windows, Linux, and MacOS.
