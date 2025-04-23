# Makefile for React 19 + Tailwind CSS v4 + Vite + pnpm (Starter Project Template)

APP_DIR=app
GIST_URL=https://gist.githubusercontent.com/jonmatum/57ed0e3b4622e2d92b6a8fce3443518e/raw/8b34d9b7c4660998fea3b37169a7b8a625511299/App.tsx

.PHONY: setup install dev build lint format clean

setup:
	mkdir -p $(APP_DIR)
	cd $(APP_DIR) && pnpm create vite . --template react-ts
	cd $(APP_DIR) && pnpm install
	cd $(APP_DIR) && pnpm add -D tailwindcss @tailwindcss/vite
	cd $(APP_DIR) && echo "@import 'tailwindcss';" > src/index.css
	curl -sSL $(GIST_URL) -o $(APP_DIR)/src/App.tsx
	cd $(APP_DIR) && echo "import { defineConfig } from 'vite'\nimport react from '@vitejs/plugin-react'\nimport tailwindcss from '@tailwindcss/vite'\n\nexport default defineConfig({\n  plugins: [\n    react(),\n    tailwindcss(),\n  ],\n})" > vite.config.ts
	cd $(APP_DIR) && sed -i.bak 's/"dev": "vite"/"dev": "vite --host 0.0.0.0"/' package.json && rm package.json.bak
	@echo "Starter project created using React 19, Tailwind CSS 4, and Vite"

install:
	cd $(APP_DIR) && pnpm install

dev:
	cd $(APP_DIR) && pnpm dev --host 0.0.0.0

build:
	cd $(APP_DIR) && pnpm build

lint:
	cd $(APP_DIR) && pnpm lint || true

format:
	cd $(APP_DIR) && pnpm format || true

clean:
	rm -rf $(APP_DIR)/dist