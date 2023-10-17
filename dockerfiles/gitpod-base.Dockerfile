FROM gitpod/workspace-full

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install build-essential

