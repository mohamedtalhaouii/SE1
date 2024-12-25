#!/bin/bash

read -p "Entrer la borne inferieur : " a
read -p "Entrer la borne superieure : " b

read -p "Entrer un entier : " x

if [ $x -le $a ];then
    echo "Plus petit !"
elif [ $x -ge $b ];then
    echo "Plus grand !"
fi