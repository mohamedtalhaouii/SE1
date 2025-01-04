#Q1
gedit premier.sh
#----------------------------------#
#!/bin/bash

premier(){
    P=0
    for (( i=1; i <= $1; i++ )); do
        if [ $(( $1 % $i )) -eq 0 ]; then
            P=$((P + 1))
        fi
    done

    if [ $P -eq 2 ]; then
        echo "$1 est un Nombre Premier"
    else
        echo "$1 n'est pas un Nombre Premier"
    fi
}
premier $1
#----------------------------------#

#Q2
bash premier.sh 7 #=> premier