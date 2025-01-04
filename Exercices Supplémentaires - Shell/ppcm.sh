#!/bin/bash
#Mohamed Talhaoui

pgcd(){
    if [ $2 -eq 0 ]; then
        echo $1
    else
        pgcd $2 `expr $1 % $2`
    fi
}
ppcm(){
    echo `expr \( $1 \* $2 \) / $(pgcd $1 $2)`
}

read -p "Veuillez Saisir deux Entiers Positives : " a b
ppcm $a $b