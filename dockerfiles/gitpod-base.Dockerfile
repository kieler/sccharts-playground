FROM gitpod/workspace-full

RUN sudo apt-get update && \
    sudo apt-get install -y openjdk-17-jdk && \
    sudo apt-get install build-essential

