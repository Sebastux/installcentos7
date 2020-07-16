![alt text](../../ficscommun/images/centos.png "Logo centos")


# **tronccomuncentos** :

Ce rôle permet d'installer un ensemble de packages pour les serveurs, d'installer / de mettre à jour les compilateurs, python 3.x. <br />
Une sécurisation de la machine est opérée en modifiant la configuration du service ssh et en installant
un antivirus (clamav) ainsi qu'un logiciel de monitoring (fail2ban).

## **Prérequis** :

Connexion ssh à la machine par mot de passe.

## **Variables** :

Variables | Description |
-------- | ----------- |
version_role | Contient la version du rôle troncommun. |
packages_commun | Contient la liste des divers packages du tronc commun. |
liste_depots | Contient les URL des dépôt rpm fusion ainsi que le nom du package epel. |
packages_pip | Contient la liste des packages pip2 à installer ou à mettre à jour. |
ansible_port | Cette variable doit se trouver dans l'inventaire et permet de modifier le numéro de port utiliser par le serveur ssh. |

## **Dépendances** :

Un PC ayant une installation minimale de centos 7.X.

## **Fonctionnalités** :
   Configure la machine. <br />
   Installe des outils d'administration. <br />
   Met à jour le serveur lors du second passage du rôle. <br />

## **Auteur** :
Sebastux.

### **Versions** :

![alt text](https://img.shields.io/badge/release-v1.4.1-blue.svg "Logo release") (05/06/2020) : <br />
   Modification du nom du fichier warningpip qui était copié sur la machine cible avec une extension conf au lieu de sh. <br />

![alt text](https://img.shields.io/badge/release-v1.4.0-blue.svg "Logo release") (30/05/2020) : <br />
   Suppression de la création d'un alias suite à l'amélioration de la gestion des symlink alternatives. <br />
   Suppression du template de création de l'alias. <br />
   Ajout d'un blacklistage du paquet permettant l'installation de gcc, de g++ et de gfortan. <br />
   Lors de la 1 ère installation, le binaire fourni par le système est renomé et ajouté dans la liste alternatives. <br />
   Création d'un lien vers la version la plus récent et augmentation du poid afin d'être certain de rester la version par défaut. <br />
   Le script est généré avec jinja en fonction du type d'installation. <br />

![alt text](https://img.shields.io/badge/release-v1.3.2-blue.svg "Logo release") (18/05/2020) : <br />
   Ajout de la gestion du port ssh afin de l'utiliser sur 2 serveurs distant. <br />
   Ajout du 2 ème serveur dans la liste des serveurs de production. <br />

![alt text](https://img.shields.io/badge/release-v1.3.0-blue.svg "Logo release") (01/05/2020) : <br />
   Modification du chemin de sauvegarde des clés afin d'utiliser le nouveau répertoire. <br />
   Utilisation d'un fichier fact propre à chaque rôle. Le fichier devient tronccommun.fact. <br />
   Nettoyage du code inutile. <br />

![alt text](https://img.shields.io/badge/release-v1.2.0-blue.svg "Logo release") (22/03/2020) : <br />
   Ajout de la liste complète des packages clamav. <br />
   Ajout du package deltarpm afin de diminuer la taille des packages téléchargés <br />
   Ajout de 2 tempates pour configurer clamav et freshclam. <br />
   Ajout d'un template permettant d'avoir freshclam en tant que deamon. <br />

![alt text](https://img.shields.io/badge/release-v1.10-blue.svg "Logo release") (07/03/2020) : <br />
   Changement de la variable tester afin de savoir s'il faut faire une installation ou une maj. <br />
   Pour la MAJ et l'installation, ajout de l'arrêt des services fail2ban et yum cron. <br />
   Pour la maj et l'installation, ajout du template pour yum cron. <br />
   Pour l'installation, Suppression des anciens tests devenus obsolète. <br />
   La clé ssh est maintenant générée par le module ssh-keypair au lieu du module user. <br />
   Les clés ssh sont maintenant téléchargées sur le poste qui lance le playbook. <br />
   Les nouveaux templates sont aussi installés lors de la tache de MAJ.

![alt text](https://img.shields.io/badge/release-v1.0.0-blue.svg "Logo release") (21/02/2020) : <br />
   Création d'une partie installation de la machine. <br />
   Création d'une partie mise à jour de la machine. <br />

![alt text](https://img.shields.io/badge/release-v1.0.0-blue.svg "Logo release") (25/01/2020) : <br />
   Création de la 1 ère version du rôle. <br />
   Installation de divers outils d'administration. <br />
   Installation des dépôts rpm fusion et epel. <br />
   Sécurisation du ssh. <br />
   Installation de clamav. <br />
   Installation configuration de fail2ban. <br />
   Configuration de yum. <br />
   Configuration de chrony. <br />
   Création d'alias. <br />
   Création du compte administrateur. <br />
   Création de clés ssh pour les comptes administrateur et root. <br />
