#!/bin/bash
echo "Bienvenue $USERNAME, nous sommes le $(date)."
cd ~
ls
read -p "Quel répertoire vous intéresse aujourd'hui ?" rep
cd $rep
echo "Voilà ce qu'on a dans $rep :"
ls
echo "les fichiers modifiés il y a une semaine sont :"
echo$(find -type f -mtime -7)

