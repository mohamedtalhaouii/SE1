#!/bin/bash

read -p "Entrer premier entier : " a
read -p "Entrer deuxieme entier : " b
q=0

if [ $a -ge $b ];then
    while [ $a -ge $b ];do
        a=`expr $a - $b`
        q=`expr $q + 1`
    done
    echo "le quotient est $q et le rest est $a"
else
    while [ $b -ge $a ];do
        b=`expr $b - $a`
        q=`expr $q + 1`
    done
    echo "le quotient est $q et le rest est $b"
fi