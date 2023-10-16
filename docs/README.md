# Mise en place


Clone ce dépôt grâce au lien donné ci-dessus ⬆ <a href="#input-clone"><i class="bi bi-code-slash"></i>&nbsp;Code</a>. 
{: .alert-info } 

Le dossier que tu viens de cloner contient un fichier `database.sql`.  

Ouvre ton terminal à la racine de ce dossier `cd workshop-db-advanced` et lance la commande suivante en remplaçant `<your_name>` par ton véritable identifiant de connexion à Mysql :

```bash
mysql -u <your_name> -p < database.sql
```

Connecte-toi ensuite à Mysql et vérifie que la BDD `kaamelott` a bien été créée et contient les tables **Kingdom**, **Role**, et **Person** avec quelques enregistrements.

## 🖥️ Comment procéder

Voici les structures des tables que tu viens de créer et sur lesquelles t'appuyer pour la réalisation de cet atelier.

![](modelisation.png)
{: .text-center }

En racine du dossier que tu viens de cloner se trouve également le fichier `workshop.sql`.  
Tu pourras t'en servir pour écrire les requêtes au fur et à mesure de l'atelier. Pour les exécuter facilement dans ton terminal, utilise la commande suivante :

```bash
mysql -u <your_name> -p<your_pass> -t < workshop.sql
```

Pense à remplacer `<your_name>` et `<your_pass>` par tes identifiants de connexion à Mysql.  
L'option `-t` permet quant à elle d'avoir une jolie présentation.
{: .alert-info }

## 🤴 Premières requêtes


Ecrire les requêtes qui permettent d'afficher respectivement les informations suivante :

1. Le prénom, nom et âge des personnages

2. Le prénom, nom des personnages ainsi que leur royaume, uniquement pour ceux étant reliés à un royaume

3. La même chose en incluant tous les personnages

## 🧙‍♂️ Et on complexifie !


De la même manière, écrire les requêtes permettant d'afficher :

1. La moyenne de l'âge des personnages  

2. La moyenne de tous les personnages n’ayant pas le rôle de magicien

3. Le nombre de personnage par royaume (inclure les royaumes n’ayant pas de personnage)

4. La moyenne de l’âge par rôle

5. La liste de tous les personnages avec leur rôle et royaume éventuels

6. La liste des royaumes ayant au moins 2 sujets

### Félicitations, tu es arrivé au bout !
{: .text-center }
![](https://media.giphy.com/media/rl7Q4gxngrxVC/giphy.gif)
{: .text-center }