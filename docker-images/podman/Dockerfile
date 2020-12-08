FROM debian:bullseye-slim
LABEL maintainer="macchiang@gmail.com"
RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
    podman \
    runc \
    ca-certificates \
    iptables \
    ; \
    rm -rf /var/lib/apt/lists/*
ADD policy.json /etc/containers/
ADD libpod.conf /etc/containers/

