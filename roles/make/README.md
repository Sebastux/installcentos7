![alt text](../../ficscommun/images/make.png "Logo GNU")


# **Make** :

Ce rôle permet l'installation par compilation du moteur de production Make.

## **Prérequis** :

Connexion ssh à la machine par mot de passe. <br />
Le rôle troncommun doit avoir été exécuté. <br />
Une version récente de GCC doit être installée. <br />

## **Variables** :

Variables | Description |
-------- | ----------- |
version_role | Contient la version du rôle. |
version_make | Contient la version de Make à installer sous la forme x.y.z. |
liste_package | Contient la liste des fichiers à installer afin de permettre la compilation. |
chemin_install | Contient le chemin d'installation utilisé par le script de compilation. |
chemin_bin | Contient le chemin du binaire utilisé par le script de compilation pour la création du lien symbolique par alternatives. |

## **Dépendances** :

Un PC ayant une installation minimale de centos 7.X. <br />
Le rôle troncommun doit avoir été utilisé au moins une fois. <br />
Le rôle GCC doit avoir été utilisé au moins une fois. <br />

## **Fonctionnalités** :

Installation des dépendances permettant la compilation de Make. <br />
Téléchargement et compilation de la dernière version de Make. <br />
Modification du PATH afin de pouvoir utiliser la version qui a été installée par ce rôle. <br />

## **Auteur** :

Sebastux.

### **Versions** :

![alt text](https://img.shields.io/badge/release-v1.2.0-blue.svg "Logo release") (30/05/2020) : <br />
   - Suppression de la gestion de l'alias. <br />
   - Blaclistage du package afin d'éviter la suppression du lien. <br />
   - La compilation est maintenant réalisée avec 4 threads. <br />
   - La gestion du lien passe en automatique suis à l'augmentation du poids du lien créé. <br />

![alt text](https://img.shields.io/badge/release-v1.1.0-blue.svg "Logo release") (03/05/2020) : <br />
   - Utilisation du fichier fact commun. <br />
   - Le fichier créé est maintenant make.fact <br />
   - Création d'un lien symbolique permettant d'utiliser toutes les versions de make (système, package GCC et compilé par ce rôle.) <br />
   - Le lien symbolique ne pouvant pas s'appeler make, il a été appelé make2. Un alias est créé <br />
     pour permettre de rediriger les appels de make vers make2. Un script est copié dans profile.d. <br />

![alt text](https://img.shields.io/badge/release-v1.0.0-blue.svg "Logo release") (16/02/2020) : <br />
   - Création de la 1 ère version de l'installation de Make. <br />
   - La version installée est la version 4.3.
