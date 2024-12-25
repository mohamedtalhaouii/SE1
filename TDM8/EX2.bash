#Q1
gedit script.sh
#----------------------------------#
#!/bin/bash
fonction(){
    #a
    mkdir rep; cd rep
    touch jours.txt mois.txt

    #b
    gedit jours.txt # Remplissage
    gedit mois.txt # Remplissage

    #c
    ln jours.txt lien_jours
    ln -s mois.txt lien_mois

    #d
    ls
}
#appel de fonction
fonction
#----------------------------------#

#Q2
bash script.sh 