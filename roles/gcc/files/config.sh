#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : config.sh
# Description      : Script de configuration de GCC
# Auteur           : MELONI Sébastien
# Date             : 25/04/2019
# Modification     : 01/02/2020
# Version          : 1.00
# Utilisation      : ./compile.sh
# Notes            : Script lancé par ansible.
# Version de bash  : 4.4.12
#==============================================================================

# Affectation des droits root
chown -R root: *

# Affectation des droits d'éxécution
chmod 700 ./configure

#unset LIBRARY_PATH CPATH C_INCLUDE_PATH PKG_CONFIG_PATH CPLUS_INCLUDE_PATH INCLUDE

./configure --build=x86_64-linux-gnu --host=x86_64-linux-gnu \
             --target=x86_64-linux-gnu --prefix=/opt/compilateurs/gcc \
             --enable-checking=release --disable-multilib \
             --enable-threads  --enable-threads=posix \
             --with-pkgversion="infogestux"
