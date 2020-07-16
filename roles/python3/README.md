<img align="center" width="300" height="300" src="../../ficscommun/images/python.jpg">


# **Python** :

Ce rôle permet l'installation par compilation du langage de scripting Python 3.x.
Il installe et met à jour la dernière version de pip3 et setuptools.

## **Prérequis** :

Connexion ssh à la machine par mot de passe. <br />
Le rôle troncommun doit avoir été exécuté. <br />
Le rôle GCC doit avoir été exécuté. <br />

## **Variables** :

Variables | Description |
-------- | ----------- |
version_role | Contient la version du rôle. |
version_python | Contient la version de Python 3.x à installer sous la forme x.y.z. |
branche_python | Contient la version de la branche de python utilisé dans l'URL. |
hash_python | Contient le hash au format MD5 de l'archive contenant les sources de Python. |
liste_packages | Cette variable contient la liste des fichiers à installer afin de permettre la compilation. |
chemin_install | Contient le chemin d'installation utilisé par le script de compilation. |
chemin_bin | Contient le chemin du binaire utilisé par le script de compilation pour la création du lien symbolique par alternatives. |
chemin_pip | Contient de le chemin du binaire pip3 utilisé dans le template d'alias. |

## **Dépendances** :

Un PC ayant une installation minimale de centos 7.X. <br />
Le rôle troncommun doit avoir été utilisé au moins une fois. <br />
Le rôle GCC doit avoir été utilisé au moins une fois. <br />

## **Fonctionnalités** :

   Installation des dépendances permettant la compilation de CMake. <br />
   Téléchargement et compilation de la dernière version de CMake. <br />
   Modification du PATH afin de pouvoir utiliser la version qui a été installée par ce rôle. <br />

## **Auteur** :
Sebastux.

### **Versions** :

![alt text](https://img.shields.io/badge/release-v1.2.0-blue.svg "Logo release") (30/05/2020) : <br />
   - Création d'une variable de gestion du chemin pour le binaire pip3 <br />
   - Ajout d'une mise à jour de pip3 à l'aide de cette variable. <br />
   - Suppression de l'alias gérant pip3. <br />
   - Mise à jour de la version du script d'installation. <br />
   - Ajout d'une variable de gestion du chemin de pip dans le script. <br />
   - Blacklistage du paquet python afin d'éviter les mises à jour  qui pourrait écraser le symlink. <br />
   - Modification des option lors de l'utilisation du script configure. <br />
     Ajout de divers liens symbolique à l'intérieur du répertoire bin ainsi que d'un symlink dans un répertoire de recherche (python38). <br />
   - Compilation des sources en utilisant 4 threads. <br />
   - Ajout d'une condition jinja afin d'écrire le script différemment. <br />

![alt text](https://img.shields.io/badge/release-v1.1.5-blue.svg "Logo release") (18/05/2020) : <br />
   - Passage de python en 3.8.3. <br />
   - Ajout d'une variable permettant de localiser le binaire de pip dans le template d'alias. <br />
   - Ajout de nouveaux flags dans le commande de préparation de la compilation. <br />

![alt text](https://img.shields.io/badge/release-v1.1.0-blue.svg "Logo release") (03/05/2020) : <br />
   - Utilisation du fichier fact commun. <br />
   - Le fichier utilisé est maintenant python3.fact <br />
   - Les liens symboliques ne sont plus gérés par le module shell mais par le module link. <br />
   - Lors de la 1 ère installation, les modules pip et setuptools sont mis à jour par <br />
     le script car le module ansible échoue. <br />
   - Afin de respecté la future modification d'appel de pip, un script créant un alias est installé dans profile.d.

![alt text](https://img.shields.io/badge/release-v1.0.1-blue.svg "Logo release") (22/03/2020) : <br />
   - Passage en version 3.8.2. <br />

![alt text](https://img.shields.io/badge/release-v1.0.0-blue.svg "Logo release") (16/02/2020) : <br />
   - Création de la 1 ère version de l'installation de Python 3.x. <br />
   - La version installée est la version 3.8.1. <br />
