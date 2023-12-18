FROM gitpod/workspace-full

USER root

ENV FLUTTER_HOME=/home/gitpod/flutter

RUN apt-get update && apt-get -y install git curl unzip wget

RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
