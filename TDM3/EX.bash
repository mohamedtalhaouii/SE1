#Q1
mkdir rep
touch jours.txt mois.txt

#Q2
gedit jours.txt # Remplissage
gedit mois.txt # Remplissage
head -n3 jours.txt; head -n3 mois.txt
tail -n3 jours.txt; tail -n3 mois.txt

#Q3
ln jours.txt lien_jours
ln -s mois.txt lien_mois
diff lien_jours lien_mois

#Q4
tree . # repertoire courant (rep)
sort -r lien_jours

#Q5
chmod 740 jours.txt
# les droits d’acces de fichier lien_jours sont -rwxrwxrwx (777)

#Q6
rm mois.txt
cat lien_mois # le fichier n'existe pas

#Q7
find ./ -name "*.txt"

#Q8
grep -c "me" lien_jours