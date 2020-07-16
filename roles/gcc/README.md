![alt text](../../ficscommun/images/gcc.png "Logo GCC")


# **GCC** :

Ce rôle permet l'installation par compilation ou par packages du compilateur GCC.

## **Prérequis** :

Connexion ssh à la machine par mot de passe. <br />
Le rôle troncommun doit d’abord avoir été exécuté. <br />

## **Variables** :

Variables | Description |
-------- | ----------- |
version_role | Contient la version du rôle. |
version_gcc | Contient la version de GCC à installer sous la forme x.y.z. |
checksum_fic | Contient le checksum md5 de l'archive à télécharger. |
rep_travail | Contient le chemin du répertoire dans lequel sera téléchargé et compilé GCC. |
rep_gcc | Contient le chemin du répertoire de GCC après décompression de l'archive. Cette variable est affecté "automatiquement". |
fic_gcc | Contient le nom de l'archive à télécharger. Cette variable est affecté "automatiquement". |
url_gcc | Cette variable contient l'url de l'archive à télécharger.  Cette variable est affecté "automatiquement". |
liste_install | Cette variable contient la liste des dépendances permettant la compilation de GCC. |
liste_depots | Contient la liste des dépôts ajouté lors d'une installation par dépôt. |
liste_packages | Contient la liste des packages ajouté lors d'une installation par dépôt |
installe_sources | Permet de basculer entre une installation par source est une installation par compilation. Mettre à false pour une installation par packages.  |

## **Dépendances** :

Un PC ayant une installation minimale de centos 7.X. <br />
Le rôle troncommun doit avoir été utilisé au moins une fois. <br />

## **Fonctionnalités** :

   - Installation des dépendances permettant la compilation de GCC. <br />
   - Téléchargement et compilation de la dernière version de GCC. <br />
   - Ajout d'un dépôt tiers. <br />
   - Installation de devtools-9. <br />

## **Auteur** :
Sebastux.

### **Versions** :

![alt text](https://img.shields.io/badge/release-v1.2.0-blue.svg "Logo release") (30/05/2020) : <br />
   - Suppression de la création d'un alias suite à l'amélioration de la gestion des symlink alternatives. <br />
   - Suppression du template de création de l'alias. <br />
   - Ajout d'un blacklistage du paquet permettant l'installation de gcc, de g++ et de gfortan. <br />
   - Lors de la 1 ère installation, le binaire fourni par le système est renommé et ajouté dans la liste alternatives. <br />
   - Création d'un lien vers la version la plus récent et augmentation du poids afin d'être certain de rester la version par défaut. <br />
   - Le script est généré avec jinja en fonction du type d'installation. <br />

![alt text](https://img.shields.io/badge/release-v1.1.0-blue.svg "Logo release") (02/05/2020) :
  - Création d'une tache permettant de choisir entre une installation par compilation <br /> et une installation par package. <br />
  - Ajout d'une instruction block permettant d'atteindre le fichier facts lors  <br /> de l'utilisation du playbook GCC ou du playbook site  <br />
  - Utilisation du fichier fact commun.  <br />
  - Création du fichier gcc.fact.  <br />
  - L'installation de l'installation par packages utilise devtoolset-9 comme numéro de version.  <br />
  - La version de GCC installée à ce jour est la version 9.1.1.  <br />
  - Utilisation d'un template commun afin de modifier la variable PATH.  <br />
    Un test sur la variable installe_sources permet de modifier le contenu du fichier.  <br />
  - Modification du PATH lors de l'installation par sources et utilisation <br />
    la commande alternatives pour l'installation par packages. <br />

![alt text](https://img.shields.io/badge/release-v1.0.1-blue.svg "Logo release") (22/03/2020) :

   La version installée est la version 9.3. <br />

![alt text](https://img.shields.io/badge/release-v1.0.0-blue.svg "Logo release") (16/02/2020) :

   Création de la 1 ère version de l'installation de GCC. <br />
   La version installée est la version 9.2.
