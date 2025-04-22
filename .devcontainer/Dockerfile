FROM mcr.microsoft.com/devcontainers/base:debian

RUN apt-get update && apt-get install -y \
    curl \
    git \
    bash \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]