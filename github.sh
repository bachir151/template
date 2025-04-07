#!/bin/bash

# Vérification du nombre d'arguments
if [ $# -gt 1 ]; then 
    echo "Nombre d'arguments trop grand"
    exit 1
fi

# Demande de la commande git
read -p "Que voulez-vous faire ? (add, branch, commit) : " commandeGit

# Exécution des commandes selon la réponse
if [ "$commandeGit" = "add" ]; then 
    git add .
    exit 0
fi

if [ "$commandeGit" = "branch" ]; then 
    git branch
    exit 0
fi

if [ "$commandeGit" = "commit" ]; then 
    echo "Avant de committer, vérifie bien ta base"
    read -p "As-tu bien vérifié ta base ? (oui/non) : " reponse

    if [ "$reponse" = "non" ]; then 
        echo "Veuillez changer de branche."
        exit 1
    fi

    read -p "Écrivez le message du commit : " com
    git commit -m "$com" | > fichier.txt
    exit 0
fi

# Si la commande n'est pas reconnue
echo "Commande inconnue : $commandeGit"
exit 1
