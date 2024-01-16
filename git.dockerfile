FROM ubuntu:20.04

RUN apt-get -qq update -y && apt-get -qq install -y git \
    && rm -rf /var/lib/apt/lists/*
ENV GITHUB_TOKEN=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

# Use the token in Git commands
RUN git config --global credential.helper '!f() { echo "username=david7378"; echo "password=$GITHUB_TOKEN"; }; f'

RUN adduser --disabled-password --gecos "" --uid 1000 --shell /bin/bash jenkins
