#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : compile.sh
# Description      : Script de configuration de GCC
# Auteur           : MELONI Sébastien
# Date             : 25/04/2019
# Modification     : 02/02/2020
# Version          : 1.00
# Utilisation      : ./compile.sh
# Notes            : Script lancé par ansible.
# Version de bash  : 4.4.12
#==============================================================================

# Compilation
unset LIBRARY_PATH CPATH C_INCLUDE_PATH PKG_CONFIG_PATH CPLUS_INCLUDE_PATH INCLUDE
make
