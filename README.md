# Projet Docker

**Auteurs**: Ahmed, Manassé, Hugo

## 1. Démarrer le Docker

Pour démarrer notre Docker pour la première fois, exécutez la commande suivante dans le répertoire où se trouve le fichier `docker-compose.yml` :

```bash
docker-compose up --build -d
```

Pour arrêter notre Docker, exécutez la commande suivante dans le même répertoire :
```bash
docker-compose down
```

Pour redémarrer ensuite notre Docker, exécutez la commande suivante dans le même répertoire :
```bash
docker-compose up -d
 ```

## 2. Interagir avec l'application

Pour interagir avec l’application, suivez ces étapes :
1. Entrez votre nom, un titre ou autre, puis un message dans les deux zones de texte proposées.
2. Appuyez sur le bouton **Envoyer**.

Une fois envoyé, un onglet avec ce que vous avez écrit dans la première zone de texte et dans la deuxième zone s’affichera en bas de la page.

Bravo ! Vous avez réussi à utiliser notre Docker !

## 3. L'architecture Docker

L’architecture de notre Docker est composée d'un front-end en Vue.js où l'on saisit deux valeurs dans des champs input, et d'un back-end en Python (Flask) qui interagit avec une base de données MariaDB.

Dans le fichier `docker-compose.yml`, nous avons configuré des volumes et des réseaux pour assurer la persistance des données et la communication entre les services. Le volume `mariadb_data` permet de stocker les données de la base de données MariaDB, tandis que le fichier `init_db.sql` initialise la base de données au démarrage. Le réseau `partiel-network`, utilisant le driver `bridge`, permet aux services `mariadb`, `flask`, et `vuejs` de communiquer entre eux de manière sécurisée et isolée.

Merci à vous d’avoir lu et merci pour vos cours.
