FROM n8nio/n8n:latest

USER root

# Descargar e instalar los binarios estáticos de FFmpeg y FFprobe
RUN curl -L https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz -o ffmpeg.tar.xz && \
    tar -xf ffmpeg.tar.xz && \
    mv ffmpeg-*-amd64-static/ffmpeg /usr/local/bin/ && \
    mv ffmpeg-*-amd64-static/ffprobe /usr/local/bin/ && \
    chmod +x /usr/local/bin/ffmpeg /usr/local/bin/ffprobe && \
    rm -rf ffmpeg*

USER node
