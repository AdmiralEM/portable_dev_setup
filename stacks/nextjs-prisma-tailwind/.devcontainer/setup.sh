#!/bin/bash
set -euo pipefail

cd /workspace

echo "[🛠️] Starting dev container setup..."

# Ensure pnpm is installed
if ! command -v pnpm &> /dev/null; then
  echo "[📦] Installing pnpm globally..."
  npm install -g pnpm
fi

# Initialize project if no package.json
if [ ! -f package.json ]; then
  echo "[📦] No package.json found — copying template..."
  cp .devcontainer/package.template.json package.json

  echo "[📦] Adding core dependencies..."
  pnpm add next react react-dom

  echo "[📦] Adding dev dependencies..."
  pnpm add -D typescript @types/react @types/node tailwindcss postcss autoprefixer prisma eslint prettier
fi

# Ensure dependencies are installed
if [ ! -d node_modules ]; then
  echo "[📦] Installing node modules..."
  pnpm install
fi

# Tailwind setup
if [ ! -f tailwind.config.js ]; then
  echo "[🌬️] Initializing Tailwind CSS..."
  pnpm exec tailwindcss init -p
fi

# Prisma setup
if [ ! -d prisma ]; then
  echo "[🧬] Initializing Prisma..."
  npx prisma init
fi

# Create .env if missing
if [ ! -f .env ]; then
  echo "[🔐] Creating .env placeholder..."
  echo "# Add environment variables here" > .env
fi

echo "[✅] Dev container setup complete."
