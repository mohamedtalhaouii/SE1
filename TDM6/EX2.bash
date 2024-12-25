gedit ex2.sh
#----------------------------------#
#!/bin/bash
read -p "Entrer un jour d'une semaine : " jour

case $jour in
"lundi") 
    echo "il y cours"
    ;;
"mardi") 
    echo "il y cours"
    ;;
"mercredi") 
    echo "il y cours"
    ;;
"jeudi") 
    echo "il y cours"
    ;;
"vendredi") 
    echo "il y cours"
    ;;
"samedi") 
    echo "il y a devoir surveillé"
    ;;
"dimanche") 
    echo "on se repose"
    ;;
*)
    echo "Veuillez entrer un jour d'une semaine !"
    ;;
esac
#----------------------------------#
