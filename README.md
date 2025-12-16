# 🚀 Application de Location Immobilière

Projet réalisé dans le cadre du projet N°3, de la formation OpenClassrooms.

---

## 📝 Mission

Développer le back-end (API REST) d'une application permettant aux utilisateurs de créer, voir, envoyer des messages aux propriétaires de location. 

---

## ✨ Fonctionnalités principales

- **Gestion des utilisateurs** (inscription, connexion, profil)
- **Liste de logements** disponibles (appartements, maisons, etc.)
- **Détail de logement** (voir une location, envoyer des messages)
- **Gestion de logements** (Création via formulaire)
- **Connexion sécurisée entre le front-end et le back-end**

---

## 🚀 Stack technique

- **Back-end** : Java 21, Spring Boot, Spring Data JPA, REST API, H2/MySQL, Swagger
- **Front-end** : Angular 20, TypeScript, RxJS, Angular Material
- **Outils** : Docker, Docker Compose, VS Code, Postman, Mockoon, IntelliJ, PhpMyAdmin

---

## 📦 Installation et lancement


### 1. Cloner le projet back end

```bash
git clone https://github.com/JesseeDantonio/Chatop-API-Backend

cd Chatop-API-Backend
```

### 2. Cloner, initialiser le projet front end

```bash
git clone https://github.com/JesseeDantonio/Developpez-le-back-end-en-utilisant-Java-et-Spring

cd Developpez-le-back-end-en-utilisant-Java-et-Spring

npm install
```

### 3. Lancer le fichier docker compose

```bash
cd Chatop-API-Backend

# ⚠️ Attention : 
# Les identifiants de connexion fournis dans ce projet sont exclusivement réservés à un usage local, pour l'essai et la validation du projet.  
# Ils ne doivent en aucun cas être utilisés en production ou pour des données sensibles.

docker compose up
```

### 4. Importer la structure de la base de données
```bash
# Importer le script SQL nommé ChaTop dans PhpMyAdmin
# Les identifiants sont dans le fichier docker compose
```

### 5. Lancer le back-end

```bash
# Lancer le run dans la classe principale du projet
```

### 6. Lancer le front-end

```bash
npm run start
```

