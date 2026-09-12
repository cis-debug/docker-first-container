# 🐳 Docker First Container

Premier projet Docker réalisé pour comprendre les bases de la conteneurisation avec **Docker et Nginx**.

## 🎯 Objectif

Créer une image Docker contenant un serveur **Nginx** capable de servir une page HTML personnalisée.

Ce projet permet de comprendre :

* 🐳 Image Docker
* 📦 Conteneur Docker
* 📄 Dockerfile
* 🌐 Serveur Nginx
* 🔌 Mapping des ports
* ▶️ Création et lancement d'un conteneur
* 🛑 Arrêt et suppression d'un conteneur

## 📁 Structure du projet

```text
docker-first-container/
├── Dockerfile
├── index.html
└── README.md
```

## 🧩 Fichiers

### `Dockerfile`

Le Dockerfile permet de construire l'image Docker.

```dockerfile
FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
```

### `index.html`

Page HTML personnalisée servie par Nginx à l'intérieur du conteneur.

## 🏗️ Construire l'image

```bash
docker build -t docker-first-container .
```

Cette commande construit une image Docker appelée :

```text
docker-first-container
```

## ▶️ Lancer le conteneur

```bash
docker run -d --name docker-first-container -p 8080:80 docker-first-container
```

Explication :

* `-d` → lance le conteneur en arrière-plan
* `--name` → donne un nom au conteneur
* `-p 8080:80` → connecte le port `8080` de la machine au port `80` du conteneur

## 🔎 Vérifier le conteneur

```bash
docker ps
```

Le conteneur doit apparaître dans la liste des conteneurs actifs.

## 🌐 Tester la page

Dans le navigateur :

```text
http://localhost:8080
```

Ou avec la commande :

```bash
curl http://localhost:8080
```

La page doit afficher :

```text
Hello from Docker!
```

## 📋 Voir les logs

```bash
docker logs docker-first-container
```

## 🛑 Arrêter le conteneur

```bash
docker stop docker-first-container
```

## 🗑️ Supprimer le conteneur

```bash
docker rm docker-first-container
```

## 🧹 Supprimer l'image

```bash
docker rmi docker-first-container
```

## 🧠 Ce que j'ai appris

Avec ce projet, j'ai appris à :

* créer un Dockerfile simple ;
* utiliser une image Nginx ;
* construire une image Docker avec `docker build` ;
* créer et lancer un conteneur avec `docker run` ;
* utiliser le mapping de ports ;
* vérifier un conteneur avec `docker ps` ;
* consulter les logs d'un conteneur ;
* arrêter et supprimer un conteneur.

## 🚀 Technologies utilisées

* 🐧 Linux / WSL
* 🐳 Docker
* 🌐 Nginx
* 🌐 HTML
* 📝 Markdown

## 📌 Projet

Projet réalisé dans le cadre de mon parcours personnel de montée en compétences en **DevOps, systèmes & réseaux et cybersécurité**.
