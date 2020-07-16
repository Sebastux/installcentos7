![alt text](../../ficscommun/images/git.png "Logo git")



# **Git** :

Ce rôle permet l'installation par compilation de l'outil de versionning Git. <br />

## **Prérequis** :

Connexion ssh à la machine par mot de passe. <br />
Le rôle troncommun doit avoir été exécuté. <br />
Une version récente de GCC doit avoir été installée. <br />

## **Variables** :

Variables | Description |
-------- | ----------- |
version_role | Contient la version du rôle. |
version_git | Contient la version de Git à installer sous la forme x.y.z. Cette variable est utilisée dans le fichier fact. |
rep_travail | Contient le chemin du répertoire dans lequel sera téléchargé et compiler GCC. |
liste_install | Cette variable contient la liste des dépendances permettant la compilation de Git. |

## **Dépendances** :

Un PC ayant une installation minimale de centos 7.X. <br />
Le rôle troncommun doit avoir été utiliser au moins une fois. <br />
La machine doit posséder une version récente de GCC et python3. <br />

## **Fonctionnalités** :

Installation des dépendances permettant la compilation de Git. <br />
synchronisation et compilation de la dernière version de Git. <br />
Modification du PATH afin de pouvoir utiliser la version qui a été installée par ce rôle. <br />

## **Auteur** :
Sebastux.

### **Versions** :

![alt text](https://img.shields.io/badge/release-v1.2.0-blue.svg "Logo release") (30/05/2020) : <br />
   - Suppression de la gestion de l'alias. <br />
   - Suppression du package git afin de supprimer le binaire, ce qui permet de créer le lien avec alternatives. <br />
   - La compilation est maintenant faite avec 4 threads. <br />
   - La gestion du symlink est maintenant automatique car le poids du lien qui est créé a été augmenté. <br />

![alt text](https://img.shields.io/badge/release-v1.1.0-blue.svg "Logo release") (02/05/2020) : <br />
   - Utilisation du fichier fact commun et ajout de la commande block pour sécuriser l'utilisation. <br />
   - Ajout d'un reboot du serveur en fin de tâche. <br />
   - Modification du chemin du logo dans le fichier readme. <br />
   - Suppression de la gestion des liens symboliques dans /usr/sbin. <br />
   - Ajout de la gestion des chemins grâce à la commande alternatives. <br />
   - Un alias est créé afin de fait le lien entre git2 et git.
   - Fusion des scripts d'installation et transformation en template.

![alt text](https://img.shields.io/badge/release-v1.0.1-blue.svg "Logo release") (22/03/2020) : <br />
   - La version installée est la version 2.25.2. <br />

![alt text](https://img.shields.io/badge/release-v1.0.0-blue.svg "Logo release") (16/02/2020) : <br />
   - Création de la 1 ère version de l'installation de Git. <br />
   - La version installée est la version 2.25.
