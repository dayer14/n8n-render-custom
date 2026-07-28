FROM n8nio/n8n:latest

USER root

# Instalar FFmpeg en el sistema operativo del contenedor
RUN apk add --no-cache ffmpeg

USER node

# Preinstalar el nodo de la comunidad en la imagen
RUN mkdir -p /home/node/.n8n/custom \
    && cd /home/node/.n8n/custom \
    && npm install n8n-nodes-ffmpeg
