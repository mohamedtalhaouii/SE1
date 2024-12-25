#Q1
gedit prog.sh
#----------------------------------#
#!/bin/bash
addition(){
    echo `expr $a + $b`
}

multiplication(){
    echo `expr $a \* $b`
}

read -p "Entrez deux nombre positif nombre... " a b

echo "La somme de vos deux nombres est : " 
addition $a $b
echo "Le prdouit de vos deux nombres est : " 
multiplication $a $b
#----------------------------------#

#Q2
bash prog.sh