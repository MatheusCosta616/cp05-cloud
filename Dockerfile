FROM nginx:1.27-alpine
# Atualiza pacotes do Alpine (corrige CVE critica do OpenSSL apontada pelo Trivy)
RUN apk update && apk upgrade --no-cache
COPY site/ /usr/share/nginx/html/
EXPOSE 80