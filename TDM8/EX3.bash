#Q1
gedit premier.sh
#----------------------------------#
#!/bin/bash

premier(){
    if [ `expr $1 % 2` -ne 0 ] || [ $1 -eq 2  ];then
        echo "premier"
    else
        echo "non premier"
    fi
}
premier $1
#----------------------------------#

#Q2
bash premier.sh 7 #=> premier