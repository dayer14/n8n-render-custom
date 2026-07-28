FROM n8nio/n8n:latest

USER root

# Instalar FFmpeg globalmente usando los binarios estáticos de npm
RUN npm install -g @ffmpeg-installer/ffmpeg @ffprobe-installer/ffprobe && \
    ln -s /usr/local/lib/node_modules/@ffmpeg-installer/ffmpeg/ffmpeg /usr/local/bin/ffmpeg && \
    ln -s /usr/local/lib/node_modules/@ffprobe-installer/ffprobe/ffprobe /usr/local/bin/ffprobe

USER node
