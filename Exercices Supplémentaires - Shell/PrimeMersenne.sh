#!/bin/bash
#Mohamed Talhaoui
prime() {
    P=0
    for i in `seq 1 $1`; do
        if [ `expr $1 % $i` -eq 0 ]; then
            P=`expr $P + 1`
        fi
    done

    if [ $P -eq 2 ]; then
        echo 1
    else
        echo 0
    fi
}

primeMersenne() {
    for i in `seq 1 $1`; do
        if [ $(prime $i) -eq 1 ]; then
            if [ $(( 2**$i - 1 )) -eq $1 ]; then # 2ⁿ - 1 == q | n : le nombre premier, q : le nombre va saisi par utilisateur
                echo "$1 est un Premier de Mersenne"
                exit # une fois ikhraj lina bli premier nkhrjo mn program
            fi
        fi
    done
    echo "$1 n'est pas Premier de Mersenne"
}

read -p "Entrer un nombre impair : " q

if [ `expr $q % 2` -eq 0 ]; then
    echo "Veuillez entrer un nombre impair !"
else
    primeMersenne $q
fi


# Exemple :
# q = 7 >>>>> on va verifie tous les 2ⁿ - 1 qui egale 7
# 7 est un Premier de Mersenne >>>>> 2³ - 1 == 7 | avec 3 est un nombre premier