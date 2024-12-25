#Q1
gedit script.sh
#----------------------------------#
#!/bin/bash
#a
mkdir rep
cd rep
touch jours.txt mois.txt

#b
gedit jours.txt
gedit mois.txt

#c
ln jours.txt lien_jours
ln -s mois.txt lien_mois

#d
ls
#----------------------------------#

#Q2
bash script.sh