#Q1
mkdir rep
touch jours.txt mois.txt

#Q2
gedit jours.txt #remplissage
gedit mois.txt #remplissage
ls -l jours.txt
ls -l mois.txt

#Q3
# jours.txt et mois.txt sont des fichiers normaux

#Q4
sort -r mois.txt; wc -l mois.txt

#Q5
diff mois.txt jours.txt

#Q6
cd ..
chmod u-rx rep

#Q7
cd rep
cut -c1-3 jours.txt #on peut pas lire le contenu de fichier, car on enleve la droit de lecture et d'exécution
