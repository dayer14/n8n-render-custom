FROM n8nio/n8n:latest

USER root

# 1. Instalar FFmpeg en Debian
RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# 2. Crear el directorio de nodos de la comunidad y asignar permisos al usuario node
RUN mkdir -p /home/node/.n8n/custom && \
    chown -R node:node /home/node/.n8n

USER node

# 3. Instalar el nodo de la comunidad como usuario node
WORKDIR /home/node/.n8n/custom
RUN npm install n8n-nodes-ffmpeg
