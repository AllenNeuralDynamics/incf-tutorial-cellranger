# hash:sha256:e21bc526fd52436a1979c036e2739af82eef86c5f224a7937e015b3024becc94
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

COPY postInstall /
RUN /postInstall
