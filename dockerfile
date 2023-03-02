 nginx ziehen
FROM nginx:alpine
COPY . .
# Kopieren der Konfigurationsdateien in den Container
COPY nginx.conf /etc/nginx/nginx.conf
# Kopieren des HTML-Files in den Container
COPY index.html /usr/share/nginx/html/index.html
# Port
EXPOSE 80
# Starten der nginx
CMD ["nginx", "-g", "daemon off;"]
RUN ls -la

