# While universal:focal is also okay to use, it lacks libpython3.10-dev, but uses python3.10 by default.
FROM mcr.microsoft.com/devcontainers/base:jammy

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install -y gcc
