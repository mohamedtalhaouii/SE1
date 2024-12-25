#!/bin/bash

declare -a tableau

for i in {0..9};do
    #remplissage de tableau
    read -p "Entrer la valeur `expr $i + 1` : " tableau[$i]
done

max=${tableau[0]}
min=${tableau[0]}
for i in {0..9};do
    #plus grand
    if [ $max -lt  ${tableau[$i]} ];then
        max=${tableau[$i]}
    fi
    #plus petit
    if [ $min -ge  ${tableau[$i]} ];then
        min=${tableau[$i]}
    fi
done

echo "la valeur plus grand est $max et le plus petit $min"