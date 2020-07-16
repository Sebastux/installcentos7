![alt text](../../ficscommun/images/cmake.png "Logo GCC")


# **CMake** :

Ce rôle permet l'installation par compilation du système de construction logicielle multiplateforme CMake.

## **Prérequis** :

Connexion ssh à la machine par mot de passe. <br />
Le rôle troncommun doit avoir été exécuté. <br />

## **Variables** :

Variables | Description |
-------- | ----------- |
version_role | Contient la version du rôle. |
version_cmake | Contient la version de CMake à installer sous la forme x.y.z. |
rep_travail | Contient le chemin du répertoire dans lequel sera créé le répertoire de travail. |
nom_fichier | Contient le nom de l'archive à télécharger. Cette variable est affecté "automatiquement". |
url_fichier | Cette variable contient l'url de l'archive à télécharger.  Cette variable est affecté "automatiquement". |
liste_fichier | Cette variable contient la liste des dépendances permettant la compilation de GCC. |
hash_fichier | Contient le hash au format MD5 de l'archive contenant les sources de CMake. |
chemin_fichier |Contient le chemin de l'archive de CMake. Cette variable est affecté "automatiquement". |
rep_sources | Cette variable contient le nom du répertoire après décompression de l'archive. Cette variable est affecté "automatiquement". |
chemin_sources | Cette variable contient le chemin du répertoire après décompression de l'archive. Cette variable est affecté "automatiquement". |
liste_fichier | Cette variable contient la liste des fichiers à désinstaller après exécution du rôle. |
chemin_install | Chemin d'installation de CMake utilisé pour la compilation. |
chemin_bin | Chemin du binaire de CMake utilisé pour la création du lien symbolique avec la commande alternatives. |

## **Dépendances** :

Un PC ayant une installation minimale de centos 7.X. <br />
Le rôle troncommun doit avoir été utilisé au moins une fois. <br />

## **Fonctionnalités** :

   Installation des dépendances permettant la compilation de CMake. <br />
   Téléchargement et compilation de la dernière version de CMake. <br />
   Modification du PATH afin de pouvoir utiliser la version qui a été installée par ce rôle. <br />

## **Auteur** :
Sebastux.

### **Versions** :

![alt text](https://img.shields.io/badge/release-v1.2.1-blue.svg "Logo release") (05/06/2020) : <br />
   - Passage de cmake en version 3.17.3 et mise à jour du hash. <br />

![alt text](https://img.shields.io/badge/release-v1.2.0-blue.svg "Logo release") (30/05/2020) : <br />
   - Modification de la version du script. <br />
   - Suppression de la condition else jinja2. <br />
   - Ajout de 4 thread pour la compilation. <br />
   - Passage en automatique du lien alternatives. <br />

![alt text](https://img.shields.io/badge/release-v1.1.0-blue.svg "Logo release") (02/05/2020) : <br />
  - La version installée est la version 3.17.2. <br />
  - Utilisation du fichier fact commun et création du fichier cmake.fact. <br />
  - Test de la présence du fichier fact afin de connaitre l'opération à réaliser sur ce fichier. <br />
  - L'installation ne se fait plus dans le répertoire par défaut mais dans celui qui est configuré dans la <br />
    variable chemin_install. <br />
  - La gestion du chemin d’accès, ne se fait plus à l'aide de script dans le répertoire profile.d <br />
    mais à l'aide de la commande [alternatives](https://www.redhat.com/sysadmin/alternatives-command). <br />
  - CMake 3 est installé en début de rôle et n'est plus désinstallé à la fin. Il est lié avec alternatives. <br />

![alt text](https://img.shields.io/badge/release-v1.0.1-blue.svg "Logo release") (22/03/2020) : <br />
   - La version installée est la version 3.17.0. <br />

![alt text](https://img.shields.io/badge/release-v1.0.0-blue.svg "Logo release") (16/02/2020) : <br />
   - Création de la 1 ère version de l'installation de CMake. <br />
   - La version installée est la version 3.16.4. <br />
