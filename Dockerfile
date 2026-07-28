FROM n8nio/n8n:latest

USER root

# Instalar FFmpeg a nivel de sistema
RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg && \
    rm -rf /var/lib/apt/lists/*

USER node
