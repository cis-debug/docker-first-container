# 1) On part d'une image Nginx légère (Alpine = petite taille)
FROM nginx:alpine

# 2) On copie notre page HTML dans le dossier web par défaut de Nginx
COPY index.html /usr/share/nginx/html/index.html

# 3) Documentation: le conteneur écoute sur le port 80 (HTTP)
EXPOSE 80
