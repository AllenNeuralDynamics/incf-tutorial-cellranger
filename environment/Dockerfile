# hash:sha256:5a4acab7b00bfbabce11bf417f45e6bf7e6d2d1ccb16967cf778715757fd4de6
FROM registry.codeocean.allenneuraldynamics.org/codeocean/jupyterlab:3.6.1-miniconda4.12.0-python3.9-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates=20230311ubuntu0.20.04.1 \
        wget=1.20.3-1ubuntu2 \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -U --no-cache-dir \
    code-ocean-aux-tools==1.1.0

COPY postInstall /
RUN /postInstall
