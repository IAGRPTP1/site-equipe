#!/bin/bash
# Indique au système d'exécuter ce script avec bash

DOSSIER=~/serveur/site-equipe
# Stocke le chemin du dépôt dans une variable

cd "$DOSSIER" || { echo "Dossier introuvable : $DOSSIER"; exit 1; }
# Va dans le dépôt ; s'il n'existe pas, affiche une erreur et arrête le script

git pull
# Récupère la dernière version du site depuis GitHub

sudo cp index.html style.css /var/www/html/
# Copie la page et le CSS dans le dossier servi par nginx (sudo : droits admin nécessaires)

echo "Déploiement terminé !"
# Affiche un message de fin