#!/bin/bash
#Mohamed Talhaoui

pgcd_recursive(){
    if [ $2 -eq 0 ]; then
        echo $1
    else
        pgcd_recursive $2 `expr $1 % $2`
    fi
}

pgcd_iterative(){
    a=$1
    b=$2
    if [ $b -eq 0 ]; then
        echo "pgcd($1,$2) = $a"
    else
        r=`expr $a % $b`
        
        while [ $r -ne 0 ];do
            a=$b
            b=$r
            r=`expr $a % $b`
        done
    fi
    echo "pgcd($1,$2) = $b"
}

read -p "Entrer deux Entier Positives : " a b
pgcd_iterative $a $b
pgcd_recursive $a $b