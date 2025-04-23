# Dockerfile - Optimized DevContainer using official JavaScript Node base

FROM mcr.microsoft.com/devcontainers/javascript-node:20

# Optional: install extra packages (most essentials are preinstalled)
RUN apt-get update && apt-get install -y \
    curl \
    git \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Enable and install pnpm via Corepack (already enabled in this image, but ensured here)
RUN corepack enable && corepack prepare pnpm@latest --activate

# Default command
CMD ["bash"]