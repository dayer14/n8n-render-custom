FROM n8nio/n8n:latest

USER root

# Instalar FFmpeg usando apt-get (compatible con la imagen actual de n8n)
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

USER node

# Preinstalar el nodo de la comunidad
RUN mkdir -p /home/node/.n8n/custom \
    && cd /home/node/.n8n/custom \
    && npm install n8n-nodes-ffmpeg
