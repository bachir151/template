#!/bin/bash 

if [ $# -gt 1 ]; then 
	echo "Nombre d'argument trop grand"
	exit 0
fi


read -p "Que voulez-vous faire ? : " commandeGit

if [ "$commandeGit"="add" ]; then 
	git add .
	exit 0
fi

if [ "$commandeGit"="branch" ]; then 
	git branch
	exit 0
fi

if [ "$commandeGit"="commit" ]; then 
	echo "avant de commiter vérifier bien ta base"
	read -p "As-tu bien vérifier ta base ? : " reponse

	if [ "$reponse" = "non" ]; then 
		echo "veuillez changer de branche"
		exit 0
	fi

	read -p "Ecrivez le message du commit : " com
	git commit -m $com
fi