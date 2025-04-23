#!/bin/bash
set -e

cd /workspace

echo "[🛠️] Starting dev container setup..."

# Ensure pnpm is installed
if ! command -v pnpm &> /dev/null; then
  echo "[📦] Installing pnpm globally..."
  npm install -g pnpm
fi

# First-time project init: check for package.json
if [ ! -f package.json ]; then
  echo "[📦] No package.json found — initializing project..."
  pnpm init -y

  echo "[📦] Adding core dependencies..."
  pnpm add next react react-dom

  echo "[📦] Adding dev dependencies..."
  pnpm add -D typescript @types/react @types/node tailwindcss postcss autoprefixer prisma eslint prettier
fi

# Ensure node_modules is installed
if [ ! -d node_modules ]; then
  echo "[📦] Installing node modules..."
  pnpm install
fi

# Tailwind setup (only if not already initialized)
if [ ! -f tailwind.config.js ]; then
  echo "[🌬️] Initializing Tailwind CSS..."
  pnpm exec tailwindcss init -p
fi

# Prisma setup (only if not already initialized)
if [ ! -d prisma ]; then
  echo "[🧬] Initializing Prisma..."
  npx prisma init
fi

# Generate placeholder .env file
if [ ! -f .env ]; then
  echo "[🔐] Creating .env placeholder..."
  echo "# Add environment variables here" > .env
fi

echo "[✅] Dev container setup complete."
