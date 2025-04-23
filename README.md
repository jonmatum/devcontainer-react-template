# React DevContainer Template

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![DevContainer Ready](https://img.shields.io/badge/devcontainer-ready-blue)](https://containers.dev/)
[![Vite](https://img.shields.io/badge/Vite-React_19-blueviolet)](https://vitejs.dev/)
[![TailwindCSS](https://img.shields.io/badge/TailwindCSS-4.0.0-38bdf8?logo=tailwindcss)](https://tailwindcss.com/)
[![Makefile](https://img.shields.io/badge/makefile-included-blue?logo=gnu)](https://www.gnu.org/software/make/)

> A modern DevContainer template for React 19, powered by Vite, Tailwind CSS v4, and pnpm. Lightweight, opinionated, and developer-focused.

## Features

- **React 19** (via Vite template)
- **Tailwind CSS v4** (with plugin-based Vite integration)
- **pnpm** as the package manager
- **DevContainer** optimized for VS Code with live reload
- Pre-installed VS Code extensions:
  - ESLint
  - Prettier
  - Docker
  - TypeScript Next
- Makefile for common tasks (setup, dev, build, lint, format, clean)

## Getting Started

### Prerequisites

- Docker + Dev Containers extension (VS Code)
- Git

### Quick Start

```bash
git clone https://github.com/YOUR_USERNAME/devcontainer-react-template.git
cd devcontainer-react-template
code . # Open in VS Code and re-open in container
make setup
make dev
```

Access your app at: [http://localhost:5173](http://localhost:5173)

## Project Structure

```
.devcontainer/
├── devcontainer.json
├── Dockerfile
Makefile
app/
├── index.html
├── package.json
├── src/
│   └── App.tsx (fetched from Gist)
│   └── index.css
├── vite.config.ts
```

## Makefile Commands

| Command       | Description                                      |
| ------------- | ------------------------------------------------ |
| `make setup`  | Scaffold app and apply Tailwind/React/Vite setup |
| `make dev`    | Start the Vite dev server                        |
| `make build`  | Create production build                          |
| `make lint`   | Run linter (optional, if configured)             |
| `make format` | Format files with Prettier                       |
| `make clean`  | Clean output/dist                                |

## Configuration Highlights

### Dockerfile

Uses the official [devcontainers/javascript-node](https://mcr.microsoft.com/en-us/product/devcontainers/javascript-node) image with additional:

- Corepack-enabled `pnpm`
- System dependencies: curl, git, bash

### devcontainer.json

- Pre-configured ports, terminal, and user
- Includes extensions for best TypeScript and React DX

## License

This project is licensed under the [MIT License](LICENSE).

---

> Happy Coding & Pura Vida!
