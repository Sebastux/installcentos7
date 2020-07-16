<img align="center" width="300" height="300" src="ficscommun/images/centos.png">


# **tronccomuncentos** :

Ce playbook permet de faire une première sécurisation du serveur. Il offre aussi la possibilité d'installer
(par compilation) la dernière version des compilateurs GCC, make et cmake. Il permet aussi l'Installation
de la dernière version de python 3 ainsi que de git. <br />
Le rôle troncommun Installe plusieurs outils permettant l'administration de la machine, configure
le SSH et installe clamav et fail2ban.

## **Prérequis** :

Connexion ssh à la machine par mot de passe.

## **Variables** :

Variables | Description |
-------- | ----------- |
version_playbook | Contient la version du playbook. Celle change en fonction du fichier inventory utilisé (staging ou prod) car la variable est déclarée dans les group_vars. |

## **Dépendances** :

Aucunes

## **Fonctionnalités** :

- Installation du [tronc commun](roles/troncommun/README.md) et sécurisation de la machine.
- Installation de la dernière version de [GCC](roles/gcc/README.md) par compilation ou par package.
- Installation de la dernière version de [Make](roles/make/README.md) par compilation.
- Installation de la dernière version de [CMake](roles/cmake/README.md) par compilation.
- Installation de la dernière version de [Python 3.x](roles/python3/README.md) par compilation.
- Installation de la dernière version de [Git](roles/git/README.md) par compilation.

## **Auteur** :
Sebastux.

### **Versions** :

![alt text](https://img.shields.io/badge/release-v1.4.1-blue.svg "Logo release") (05/06/2020) : <br />
  - Mises à jour mineures de cmake et du tronccommun. <br />

![alt text](https://img.shields.io/badge/release-v1.4.0-blue.svg "Logo release") (30/05/2020) : <br />
  - Modification des scripts d'installation de tous les rôles afin d'améliorer la gestion des symlink alternatives. <br />
  - La version du rôle CMake passe en version 1.2.0. <br />
  - La version du rôle GCC passe en version 1.2.0. <br />
  - La version du rôle git passe en version 1.2.0. <br />
  - La version du rôle Make passe en version 1.2.0. <br />
  - La version du rôle Python3 passe en version 1.2.0. <br />
  - La version du rôle tronccommun passe en version 1.4.0. <br />
  - Création group_vars all en prod suite à l'utilisation de plusieurs machine. <br />

![alt text](https://img.shields.io/badge/release-v1.2.0-blue.svg "Logo release") (22/03/2020) : <br />
   - La version du rôle python3 passe en version 1.1.1. <br />
   - La version du rôle CMake passe en version 1.0.1. <br />
   - La version du rôle GCC passe en version 1.0.1. <br />
   - La version du rôle git passe en version 1.0.1. <br />
   - La version du rôle tronccommun passe en version 1.2.0. <br />
   - Réfacto des inventaires et des group_vars.
   - Ajout de la gestion des versions à l'aide de la commande alternatives.

![alt text](https://img.shields.io/badge/release-v1.1.1-blue.svg "Logo release") (07/03/2020) : <br />
   - La version du rôle tronccommun passe en version 1.10.  

![alt text](https://img.shields.io/badge/release-v1.1.0-blue.svg "Logo release") (21/02/2020) : <br />

   - Réfacto de l'arborescence du playbook. <br />
   - Déplacement des group_vars. <br />
   - Ajout d'un fonction de mise à jour du serveur dans le rôle troncommun. <br />
   - Mise à jour de la documentation générale. <br />
   - Création de la documentation du rôle troncommun. <br />
   - Création de la documentation du rôle GCC. <br />
   - Création de la documentation du rôle make. <br />
   - Création de la documentation du rôle CMake. <br />
   - Création de la documentation du rôle python 3.x. <br />
   - Création de la documentation du rôle Git. <br />
   - Modification du playbook général, il est maintenant divisé en 3 parties. <br />

![alt text](https://img.shields.io/badge/release-v1.0.0-blue.svg "Logo release") (15/02/2020) : <br />

   - Création de la 1 ère version des playbooks. Il y a un playbook permettant l'installation du troncommun uniquement
     et un playbook permettant l'installation de chaque compilateur et outils. Le rôle troncommun est appelé avant chaque installation.  <br />
   - Création de la 1 ère version de l'installation du tronc commun. <br />
   - Création de la 1 ère version de l'installation de GCC. <br />
   - Création de la 1 ère version de l'installation de Make. <br />
   - Création de la 1 ère version de l'installation de CMake. <br />
   - Création de la 1 ère version de l'installation de Python 3.x. <br />
   - Création de la 1 ère version de l'installation de Git. <br />

![alt text](https://img.shields.io/badge/release-valpha-blue.svg "Logo release") (25/01/2020) : <br />
   - Création de la 1 ère version du playbook général.
