1. Forker le dépot dans mon compte github :

On fork le projet à partir du compte de Amadou Balde 

2. Cloner la copie en local :

On clonne la copie du dossier Projet-MoSEF-2018 dans notre disque local en utilisant le code :
git clone https://github.com/iliastc/MoSEF-projet-2018.git

3. On Crée le sript fich_semaine_derniere.sh qui Annonce le moment de son exécution - Souhaite la bienvenue à l'utilisateur (utiliser une variable d'environnement) qui l'a lancé et lui demande de taper le chemin d'un répertoire :

#!/bin/bash
echo "Bienvenue $USERNAME, nous sommes le $(date)." #affiche le nom de l'utilisateur et la date d'execution
cd ~ #On se place dans la source 
ls
read -p "Quel répertoire vous intéresse aujourd'hui ?" rep #Demande a l'utilisateur le répétoire qu'il souhaite consulter 
cd $rep #Selectionne le repertoire demandé 
echo "Voilà ce qu'on a dans $rep :"
ls #Ouvre le repertoire demandé 

4. Commiter le fichier dans votre dépôt local puis pousser les modifications dans le dépôt distant :

git add fich_semaine_derniere.sh  #On ajoute le sript 
git commit -m "Création projet" #On donne un nom à notre commit 
git remote add fich https://github.com/iliastc/MoSEF-projet-2018.git #ajouter un nom court auquel il est facile de faire référence
git push -u fich master #Pousser les modifications dans le dépot distant

5. Sur le dépôt local, créer une nouvelle branche :

git branch projet-linux

6. Editer le script dans la nouvelle branche pour qu'il affiche tous les fichiers modifiés il y a moins d'une semaine (du répertoire saisi par l'utilisateur) : 

On reprend le code de la question 3 et on rajoute la condition qui prend en compte que les fichiers modifiés il y a moins d'une semaine.

#!/bin/bash
echo "Bienvenue $USERNAME, nous sommes le $(date)." #affiche le nom de l'utilisateur et la date d'execution
cd ~ #On se place dans la source
ls
read -p "Quel répertoire vous intéresse aujourd'hui ?" rep #Demande a l'utilisateur le répétoire qu'il souhaite consulter
cd $rep #Selectionne le repertoire demandé
echo "Voilà ce qu'on a dans $rep :"
ls #Ouvre le repertoire demandé
echo "les fichiers modifiés il y a une semaine sont :"
echo$(find -type f -mtime -7) #affiche que les fichiers modifiés il y a une semaine

7. Pousser les changements dans votre dépôt distant

Ca suit la meme logique que la question 4 :

git add fich_semaine_derniere.sh 
git commit -m "modification semaine"
git remote add fich1 https://github.com/iliastc/MoSEF-projet-2018.git
git push -u fich1 projet-linux

8. Faire une pull request de la nouvelle branche sur master. Fusionner la pull request

J'ai fait une pull request de la branche "projet-linux" sur la branche "master",puis je l'ai fusionner en utilisant la commande merge puis confirm merge.

9. En local, fusionner la nouvelle branche à master

git checkout master #je me place dans la branche master 
git merge projet-linux #je fusionne ma branche à master

10. supprimer Consignes.md en local et pousse les modifications sur Github

rm Consignes.md
git add .
git commit -m "Suppression Consignes.md"
git remote add fich2  https://github.com/iliastc/MoSEF-projet-2018.git
git push -f fich2 master #J'ai forcer le push en utilisant le "-f"

11. Inserer readme.md pour la documentation 

vim readme.md
git add readme.md
git commit -m "Explication du projet"
git remote fich3  https://github.com/iliastc/MoSEF-projet-2018.git
git push -u fich3 master 
