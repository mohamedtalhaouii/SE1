gedit note.sh
#----------------------------------#
#!/bin/bash
read -p "Entrer votre note : " note

if [ $note -lt 10 ];then
    echo insuffisant
elif [ $note -ge 10 ] && [ $note -lt 12 ];then
    echo moyen
elif [ $note -ge 12 ] && [ $note -lt 14 ];then
    echo assez bien
elif [ $note -ge 14 ] && [ $note -lt 16 ];then
    echo bien
elif [ $note -ge 16 ] && [ $note -le 20 ];then
    echo trés bien
else
    echo "Veuillez entrer une note entre 0 et 20 !"
fi
#----------------------------------#
