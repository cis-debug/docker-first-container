# First Docker Project (Nginx Hello Page)

Premier projet Docker simple pour comprendre les bases :

- Image
- Conteneur
- Dockerfile
- Mapping de port
- Lancement / arrêt / suppression d’un conteneur
- Vérification avec `docker ps`

## Structure

docker-first-container/
├── Dockerfile
└── index.html


## Fichiers

### `index.html`
Petite page HTML servie par Nginx.

### `Dockerfile`
```Dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80

"FROM nginx:alpine : image Nginx légère
COPY ... : copie la page dans le dossier web par défaut de Nginx
EXPOSE 80 : documentation du port HTTP utilisé dans le conteneur"


## Build de l’image
sudo docker build -t hello-nginx:1.0 .

## Lancer le conteneur
sudo docker run -d --name hello-web -p 8080:80 hello-nginx:1.0

"-d : lance en arrière-plan
--name hello-web : nom du conteneur
-p 8080:80 : port host 8080 → port conteneur 80"


## Vérification
## Conteneurs en cours d’exécution :

sudo docker ps

## Test HTTP :
curl -i http://localhost:8080

## Logs / Stop / Remove (rm)
EX: sudo docker logs hello-web



