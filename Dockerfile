FROM n8nio/n8n:latest

# 1. Cambiar temporalmente a root para instalar herramientas del sistema
USER root

# 2. Instalar FFmpeg usando el gestor nativo de la imagen (Alpine)
RUN apk add --no-cache ffmpeg

# 3. Volver al usuario no privilegiado que usa n8n por seguridad
USER node
